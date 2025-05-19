import 'dart:math';

import 'package:intl/intl.dart';

import '../../../../path/file_path.dart'; // Update to correct file

Color getRandomColorTransaction() {
  Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class CurvePainterTransaction extends CustomPainter {
  final Color color;

  CurvePainterTransaction({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = color.withAlpha(30)
          ..style = PaintingStyle.fill;

    var path =
        Path()
          ..moveTo(0, size.height * 0.25)
          ..quadraticBezierTo(
            size.width * 0.25,
            size.height * 0.10,
            size.width * 0.5,
            size.height * 0.25,
          )
          ..quadraticBezierTo(
            size.width * 0.75,
            size.height * 0.40,
            size.width,
            size.height * 0.25,
          )
          ..lineTo(size.width, size.height)
          ..lineTo(0, size.height)
          ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TransactionOverviewScreen extends StatefulWidget {
  const TransactionOverviewScreen({super.key});

  @override
  State<TransactionOverviewScreen> createState() =>
      _TransactionOverviewScreenState();
}

class _TransactionOverviewScreenState extends State<TransactionOverviewScreen> {
  DateTime selectedMonth = DateTime.now();

  void _selectMonth() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedMonth,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      helpText: 'Select a month',
      fieldHintText: 'yyyy-mm-dd',
    );
    if (picked != null && picked != selectedMonth) {
      setState(() {
        selectedMonth = picked;
      });
    }
  }

  void _showMonthlySummaryDialog(
    BuildContext context,
    List<TransactionModel> transactions,
  ) {
    final income = transactions
        .where((t) => t.type == TransactionType.income)
        .fold<double>(0.0, (sum, t) => sum + t.amount);
    final expense = transactions
        .where((t) => t.type == TransactionType.expense)
        .fold<double>(0.0, (sum, t) => sum + t.amount);
    final balance = income - expense;

    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("Monthly Summary"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Table(
                  border: TableBorder.all(color: Colors.grey),
                  children: [
                    _buildSummaryRow('Type', 'Amount',),
                    _buildSummaryRow(
                      'Income',
                      '৳ ${income.toStringAsFixed(2)}',
                    ),
                    _buildSummaryRow(
                      'Expense',
                      '৳ ${expense.toStringAsFixed(2)}',
                    ),
                    _buildSummaryRow(
                      'Balance',
                      '৳ ${balance.toStringAsFixed(2)}',
                      balance >= 0 ? Colors.green : Colors.red,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Close"),
                ),
              ],
            ),
          ),
    );
  }

  TableRow _buildSummaryRow(
    String label,
    String value, [
    Color? color,
    bool isHeader = false,
  ]) {
    final textStyle =
        isHeader
            ? const TextStyle(fontWeight: FontWeight.bold)
            : TextStyle(color: color ?? Colors.black);
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label, style: textStyle),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(value, style: textStyle),
        ),
      ],
    );
  }

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

          final filteredTransactions =
              state.transactions
                  .where(
                    (t) =>
                        t.date.year == selectedMonth.year &&
                        t.date.month == selectedMonth.month,
                  )
                  .toList();

          final monthName = DateFormat('MMMM yyyy').format(selectedMonth);
          final income = filteredTransactions
              .where((t) => t.type == TransactionType.income)
              .fold<double>(0.0, (sum, t) => sum + t.amount);
          final expense = filteredTransactions
              .where((t) => t.type == TransactionType.expense)
              .fold<double>(0.0, (sum, t) => sum + t.amount);
          final balance = income - expense;

          return Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Available Balance - $monthName',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _selectMonth,
                      icon: const Icon(Icons.calendar_month),
                      tooltip: 'Pick month',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '৳ ${balance.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: balance >= 0 ? Colors.green : Colors.red,
                      ),
                    ),
                    TextButton(
                      onPressed:
                          () => _showMonthlySummaryDialog(
                        context,
                        filteredTransactions,
                      ),
                      child: const Text("View Summary"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredTransactions.length,
                  itemBuilder: (context, index) {
                    final transaction = filteredTransactions[index];
                    final itemColor = getRandomColorTransaction();

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: itemColor, width: 2),
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat(
                                  'yyyy-MM-dd',
                                ).format(transaction.date.toLocal()),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ClipPath(
                              clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: CustomPaint(
                                painter: CurvePainterTransaction(
                                  color: itemColor,
                                ),
                                child: ListTile(
                                  title: Text(transaction.description),
                                  subtitle: Text(
                                    'Amount: ${transaction.amount.toStringAsFixed(2)} - Type: ${transaction.type.name.toUpperCase()}',
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
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
