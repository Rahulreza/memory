import 'package:intl/intl.dart';

import '../../../path/file_path.dart';

class TransactionOverviewScreen extends StatelessWidget {
  const TransactionOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state.status == TransactionStatus.loading &&
              state.transactions.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == TransactionStatus.failure &&
              state.transactions.isEmpty) {
            return Center(
              child: Text('Failed to load transactions: ${state.errorMessage}'),
            );
          } else if (state.transactions.isEmpty) {
            return const Center(child: Text('No transactions yet. Add one!'));
          }

          return ListView.builder(
            itemCount: state.transactions.length,
            itemBuilder: (context, index) {
              final transaction = state.transactions[index];
              return Dismissible(
                key: Key(transaction.key.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirm Delete"),
                        content: Text(
                          "Are you sure you want to delete the transaction: ${transaction.description}?",
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("Delete"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (direction) {
                  context.read<TransactionBloc>().add(
                    TransactionEvent.deleteTransactionEvent(
                      transactionKey: transaction.key,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${transaction.description} dismissed'),
                      action: SnackBarAction(label: 'Undo', onPressed: () {}),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(transaction.description),
                  subtitle: Text(
                    'Amount: ${transaction.amount.toStringAsFixed(2)} - Type: ${transaction.type.toString().split('.').last.toUpperCase()}\n'
                    'Date: ${DateFormat('yyyy-MM-dd').format(transaction.date.toLocal())}',
                  ),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) => AddEditTransactionScreen(
                              transaction: transaction,
                            ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      // Added FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddEditTransactionScreen()),
          );
        },
        tooltip: 'Add Transaction',
        child: const Icon(Icons.add),
      ),
    );
  }
}
