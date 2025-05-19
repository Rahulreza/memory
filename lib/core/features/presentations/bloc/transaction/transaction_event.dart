part of 'transaction_bloc.dart';
@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.addTransactionEvent({required TransactionModel transaction}) = _AddTransactionEvent;
  const factory TransactionEvent.updateTransactionEvent({required dynamic originalTransactionKey, required TransactionModel updatedTransactionData}) = _UpdateTransactionEvent;
  const factory TransactionEvent.deleteTransactionEvent({required dynamic transactionKey}) = _DeleteTransactionEvent;
  const factory TransactionEvent.fetchTransactionsEvent() = _FetchTransactionsEvent;
}
