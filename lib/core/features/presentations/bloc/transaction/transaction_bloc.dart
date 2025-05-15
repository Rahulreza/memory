import 'package:flutter/foundation.dart';

import '../../../../path/file_path.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  late Box<TransactionModel> _transactionBox;

  TransactionBloc() : super(const TransactionState()) {
    _init();

    on<_AddTransactionEvent>(_onAddTransaction);
    on<_UpdateTransactionEvent>(_onUpdateTransaction);
    on<_DeleteTransactionEvent>(_onDeleteTransaction);
    on<_FetchTransactionsEvent>(_onFetchTransactions);
  }

  Future<void> _init() async {
    try {
      if (!Hive.isBoxOpen('transactions')) {
        _transactionBox = await Hive.openBox<TransactionModel>('transactions');
      } else {
        _transactionBox = Hive.box<TransactionModel>('transactions');
      }
      add(const TransactionEvent.fetchTransactionsEvent());

      _transactionBox.watch().listen((event) {
        if (kDebugMode) {
          print("Hive transactions box changed, refetching transactions...");
        }
        add(const TransactionEvent.fetchTransactionsEvent());
      });

    } catch(e) {
      print("Error initializing Transaction Bloc Hive box: $e");
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: 'Failed to initialize transactions'));
    }
  }

  Future<void> _onAddTransaction(_AddTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.add(event.transaction);
      emit(state.copyWith(status: TransactionStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdateTransaction(_UpdateTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.put(event.originalTransactionKey, event.updatedTransactionData);
      emit(state.copyWith(status: TransactionStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onDeleteTransaction(_DeleteTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.delete(event.transactionKey);
      emit(state.copyWith(status: TransactionStatus.success));
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  void _onFetchTransactions(_FetchTransactionsEvent event, Emitter<TransactionState> emit) {
    try {
      final List<TransactionModel> transactions = _transactionBox.values.toList();
      emit(state.copyWith(
        status: TransactionStatus.success,
        transactions: transactions,
        errorMessage: null,
      ));
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching transactions: $e");
      }
      emit(state.copyWith(
          status: TransactionStatus.failure,
          errorMessage: 'Failed to load transactions: ${e.toString()}'
      ));
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
