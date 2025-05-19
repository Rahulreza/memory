import 'package:hive/hive.dart';
import 'transaction_type.dart';

part 'transaction_model.g.dart';

@HiveType(typeId: 2)
class TransactionModel extends HiveObject {
  @HiveField(0)
  final String description;

  @HiveField(1)
  final double amount;

  @HiveField(2)
  final DateTime date;

  @HiveField(3)
  final TransactionType type;

  TransactionModel({
    required this.description,
    required this.amount,
    required this.date,
    required this.type,
  });
}
