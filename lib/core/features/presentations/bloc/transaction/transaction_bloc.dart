// transaction_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart'; // Make sure this is imported
import 'package:hive/hive.dart';
import 'package:flutter/foundation.dart'; // For kDebugMode

import '../../../../path/file_path.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  late Box<TransactionModel> _transactionBox;

  TransactionBloc() : super(const TransactionState()) {
    // IMPORTANT: Register event handlers FIRST
    on<_AddTransactionEvent>(_onAddTransaction);
    on<_UpdateTransactionEvent>(_onUpdateTransaction);
    on<_DeleteTransactionEvent>(_onDeleteTransaction);
    on<_FetchTransactionsEvent>(_onFetchTransactions);

    // Then call _init() which dispatches events
    _init();
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
      if (kDebugMode) {
        print("Error initializing Transaction Bloc Hive box: $e");
      }
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: 'Failed to initialize transactions'));
    }
  }

  Future<void> _onAddTransaction(_AddTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.add(event.transaction);
      // The watch listener will trigger a fetch, so no need to emit success here
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdateTransaction(_UpdateTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.put(event.originalTransactionKey, event.updatedTransactionData);
      // The watch listener will trigger a fetch
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onDeleteTransaction(_DeleteTransactionEvent event, Emitter<TransactionState> emit) async {
    emit(state.copyWith(status: TransactionStatus.loading));
    try {
      await _transactionBox.delete(event.transactionKey);
      // The watch listener will trigger a fetch
    } catch (e) {
      emit(state.copyWith(status: TransactionStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchTransactions(_FetchTransactionsEvent event, Emitter<TransactionState> emit) async {
    // Set loading state before fetching
    emit(state.copyWith(status: TransactionStatus.loading));
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
  Future<void> close() async {
    // Consider disposing the watch listener if you implement it for this bloc instance only
    // If the box itself is only opened by this bloc, you might await _transactionBox.close(); here
    return super.close();
  }
}