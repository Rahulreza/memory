
import 'package:intl/intl.dart';
import 'dart:math';

import '../../../../path/file_path.dart';

Color getRandomColorTransaction() {
  Random random = Random();
  return Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

class CurvePainterTransaction extends CustomPainter {
  final Color color;

  CurvePainterTransaction({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color.withAlpha(30) // Adjust opacity as needed
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.10, size.width * 0.5, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.40, size.width, size.height * 0.25)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class TransactionOverviewScreen extends StatelessWidget {
  const TransactionOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state.status == TransactionStatus.loading && state.transactions.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == TransactionStatus.failure && state.transactions.isEmpty) {
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
              final itemColor = getRandomColorTransaction();

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
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
                          DateFormat('yyyy-MM-dd').format(transaction.date.toLocal()),
                          style: TextStyle(fontSize: 14, color: Colors.grey[600],fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipPath(
                        clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: CustomPaint(
                          painter: CurvePainterTransaction(color: itemColor),
                          child: ListTile(
                            title: Text(transaction.description),
                            subtitle: Text(
                              'Amount: ${transaction.amount.toStringAsFixed(2)} - Type: ${transaction.type.toString().split('.').last.toUpperCase()}',
                            ),
                            isThreeLine: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => AddEditTransactionScreen(
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