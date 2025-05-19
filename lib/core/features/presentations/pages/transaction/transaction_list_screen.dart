import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import '../../../../path/file_path.dart'; // Your correct path

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
    var paint = Paint()
      ..color = color.withAlpha(30)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.10,
          size.width * 0.5, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.40,
          size.width, size.height * 0.25)
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

class _TransactionOverviewScreenState
    extends State<TransactionOverviewScreen> {
  late DateTime selectedMonth;

  @override
  void initState() {
    super.initState();
    selectedMonth = DateTime.now();
  }

  void _selectMonth() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedMonth,
      firstDate: DateTime(2025),
      lastDate: DateTime(2100),
      helpText: 'Select Month',
      fieldLabelText: 'Month',
      fieldHintText: 'Month/Year',
      builder: (context, child) {
        return Theme(data: Theme.of(context), child: child!);
      },
    );

    if (picked != null) {
      setState(() {
        selectedMonth = DateTime(picked.year, picked.month);
      });
    }
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

          final filteredTransactions = state.transactions
              .where((t) =>
          t.date.year == selectedMonth.year &&
              t.date.month == selectedMonth.month)
              .toList();

          double income = 0.0;
          double expense = 0.0;

          for (var transaction in filteredTransactions) {
            if (transaction.type == TransactionType.income) {
              income += transaction.amount;
            } else if (transaction.type == TransactionType.expense) {
              expense += transaction.amount;
            }
          }

          final balance = income - expense;
          final monthName = DateFormat('MMMM yyyy').format(selectedMonth);

          return ListView(
            padding: const EdgeInsets.only(bottom: 80),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Available Balance - $monthName',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: _selectMonth,
                          icon: const Icon(Icons.calendar_month),
                          tooltip: 'Pick month',
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '৳ ${balance.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: balance >= 0 ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              if (filteredTransactions.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('No transactions for this month.'),
                ),
              ...filteredTransactions.map((transaction) {
                final itemColor = getRandomColorTransaction();
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 8.0),
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
                            DateFormat('yyyy-MM-dd')
                                .format(transaction.date.toLocal()),
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ClipPath(
                          clipper: ShapeBorderClipper(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
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
                                        transaction: transaction),
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
              }).toList(),
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
