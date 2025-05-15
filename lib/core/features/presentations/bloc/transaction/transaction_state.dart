part of 'transaction_bloc.dart';

enum TransactionStatus { initial, loading, success, failure }

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default([]) List<TransactionModel> transactions,
    @Default(TransactionStatus.initial) TransactionStatus status,
    String? errorMessage,
  }) = _TransactionState;
}