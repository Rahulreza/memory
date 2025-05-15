// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transaction) addTransactionEvent,
    required TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)
        updateTransactionEvent,
    required TResult Function(dynamic transactionKey) deleteTransactionEvent,
    required TResult Function() fetchTransactionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transaction)? addTransactionEvent,
    TResult? Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult? Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult? Function()? fetchTransactionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transaction)? addTransactionEvent,
    TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult Function()? fetchTransactionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) addTransactionEvent,
    required TResult Function(_UpdateTransactionEvent value)
        updateTransactionEvent,
    required TResult Function(_DeleteTransactionEvent value)
        deleteTransactionEvent,
    required TResult Function(_FetchTransactionsEvent value)
        fetchTransactionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult? Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult? Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult? Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddTransactionEventImplCopyWith<$Res> {
  factory _$$AddTransactionEventImplCopyWith(_$AddTransactionEventImpl value,
          $Res Function(_$AddTransactionEventImpl) then) =
      __$$AddTransactionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$AddTransactionEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$AddTransactionEventImpl>
    implements _$$AddTransactionEventImplCopyWith<$Res> {
  __$$AddTransactionEventImplCopyWithImpl(_$AddTransactionEventImpl _value,
      $Res Function(_$AddTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$AddTransactionEventImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$AddTransactionEventImpl
    with DiagnosticableTreeMixin
    implements _AddTransactionEvent {
  const _$AddTransactionEventImpl({required this.transaction});

  @override
  final TransactionModel transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionEvent.addTransactionEvent(transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionEvent.addTransactionEvent'))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionEventImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionEventImplCopyWith<_$AddTransactionEventImpl> get copyWith =>
      __$$AddTransactionEventImplCopyWithImpl<_$AddTransactionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transaction) addTransactionEvent,
    required TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)
        updateTransactionEvent,
    required TResult Function(dynamic transactionKey) deleteTransactionEvent,
    required TResult Function() fetchTransactionsEvent,
  }) {
    return addTransactionEvent(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transaction)? addTransactionEvent,
    TResult? Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult? Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult? Function()? fetchTransactionsEvent,
  }) {
    return addTransactionEvent?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transaction)? addTransactionEvent,
    TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult Function()? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (addTransactionEvent != null) {
      return addTransactionEvent(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) addTransactionEvent,
    required TResult Function(_UpdateTransactionEvent value)
        updateTransactionEvent,
    required TResult Function(_DeleteTransactionEvent value)
        deleteTransactionEvent,
    required TResult Function(_FetchTransactionsEvent value)
        fetchTransactionsEvent,
  }) {
    return addTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult? Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult? Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult? Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
  }) {
    return addTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (addTransactionEvent != null) {
      return addTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _AddTransactionEvent implements TransactionEvent {
  const factory _AddTransactionEvent(
          {required final TransactionModel transaction}) =
      _$AddTransactionEventImpl;

  TransactionModel get transaction;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTransactionEventImplCopyWith<_$AddTransactionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionEventImplCopyWith<$Res> {
  factory _$$UpdateTransactionEventImplCopyWith(
          _$UpdateTransactionEventImpl value,
          $Res Function(_$UpdateTransactionEventImpl) then) =
      __$$UpdateTransactionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic originalTransactionKey,
      TransactionModel updatedTransactionData});
}

/// @nodoc
class __$$UpdateTransactionEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$UpdateTransactionEventImpl>
    implements _$$UpdateTransactionEventImplCopyWith<$Res> {
  __$$UpdateTransactionEventImplCopyWithImpl(
      _$UpdateTransactionEventImpl _value,
      $Res Function(_$UpdateTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalTransactionKey = freezed,
    Object? updatedTransactionData = null,
  }) {
    return _then(_$UpdateTransactionEventImpl(
      originalTransactionKey: freezed == originalTransactionKey
          ? _value.originalTransactionKey
          : originalTransactionKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedTransactionData: null == updatedTransactionData
          ? _value.updatedTransactionData
          : updatedTransactionData // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionEventImpl
    with DiagnosticableTreeMixin
    implements _UpdateTransactionEvent {
  const _$UpdateTransactionEventImpl(
      {required this.originalTransactionKey,
      required this.updatedTransactionData});

  @override
  final dynamic originalTransactionKey;
  @override
  final TransactionModel updatedTransactionData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionEvent.updateTransactionEvent(originalTransactionKey: $originalTransactionKey, updatedTransactionData: $updatedTransactionData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TransactionEvent.updateTransactionEvent'))
      ..add(
          DiagnosticsProperty('originalTransactionKey', originalTransactionKey))
      ..add(DiagnosticsProperty(
          'updatedTransactionData', updatedTransactionData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionEventImpl &&
            const DeepCollectionEquality()
                .equals(other.originalTransactionKey, originalTransactionKey) &&
            (identical(other.updatedTransactionData, updatedTransactionData) ||
                other.updatedTransactionData == updatedTransactionData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originalTransactionKey),
      updatedTransactionData);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionEventImplCopyWith<_$UpdateTransactionEventImpl>
      get copyWith => __$$UpdateTransactionEventImplCopyWithImpl<
          _$UpdateTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transaction) addTransactionEvent,
    required TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)
        updateTransactionEvent,
    required TResult Function(dynamic transactionKey) deleteTransactionEvent,
    required TResult Function() fetchTransactionsEvent,
  }) {
    return updateTransactionEvent(
        originalTransactionKey, updatedTransactionData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transaction)? addTransactionEvent,
    TResult? Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult? Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult? Function()? fetchTransactionsEvent,
  }) {
    return updateTransactionEvent?.call(
        originalTransactionKey, updatedTransactionData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transaction)? addTransactionEvent,
    TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult Function()? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (updateTransactionEvent != null) {
      return updateTransactionEvent(
          originalTransactionKey, updatedTransactionData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) addTransactionEvent,
    required TResult Function(_UpdateTransactionEvent value)
        updateTransactionEvent,
    required TResult Function(_DeleteTransactionEvent value)
        deleteTransactionEvent,
    required TResult Function(_FetchTransactionsEvent value)
        fetchTransactionsEvent,
  }) {
    return updateTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult? Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult? Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult? Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
  }) {
    return updateTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (updateTransactionEvent != null) {
      return updateTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransactionEvent implements TransactionEvent {
  const factory _UpdateTransactionEvent(
          {required final dynamic originalTransactionKey,
          required final TransactionModel updatedTransactionData}) =
      _$UpdateTransactionEventImpl;

  dynamic get originalTransactionKey;
  TransactionModel get updatedTransactionData;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionEventImplCopyWith<_$UpdateTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransactionEventImplCopyWith<$Res> {
  factory _$$DeleteTransactionEventImplCopyWith(
          _$DeleteTransactionEventImpl value,
          $Res Function(_$DeleteTransactionEventImpl) then) =
      __$$DeleteTransactionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic transactionKey});
}

/// @nodoc
class __$$DeleteTransactionEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$DeleteTransactionEventImpl>
    implements _$$DeleteTransactionEventImplCopyWith<$Res> {
  __$$DeleteTransactionEventImplCopyWithImpl(
      _$DeleteTransactionEventImpl _value,
      $Res Function(_$DeleteTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionKey = freezed,
  }) {
    return _then(_$DeleteTransactionEventImpl(
      transactionKey: freezed == transactionKey
          ? _value.transactionKey
          : transactionKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DeleteTransactionEventImpl
    with DiagnosticableTreeMixin
    implements _DeleteTransactionEvent {
  const _$DeleteTransactionEventImpl({required this.transactionKey});

  @override
  final dynamic transactionKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionEvent.deleteTransactionEvent(transactionKey: $transactionKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TransactionEvent.deleteTransactionEvent'))
      ..add(DiagnosticsProperty('transactionKey', transactionKey));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransactionEventImpl &&
            const DeepCollectionEquality()
                .equals(other.transactionKey, transactionKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionKey));

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTransactionEventImplCopyWith<_$DeleteTransactionEventImpl>
      get copyWith => __$$DeleteTransactionEventImplCopyWithImpl<
          _$DeleteTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transaction) addTransactionEvent,
    required TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)
        updateTransactionEvent,
    required TResult Function(dynamic transactionKey) deleteTransactionEvent,
    required TResult Function() fetchTransactionsEvent,
  }) {
    return deleteTransactionEvent(transactionKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transaction)? addTransactionEvent,
    TResult? Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult? Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult? Function()? fetchTransactionsEvent,
  }) {
    return deleteTransactionEvent?.call(transactionKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transaction)? addTransactionEvent,
    TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult Function()? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (deleteTransactionEvent != null) {
      return deleteTransactionEvent(transactionKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) addTransactionEvent,
    required TResult Function(_UpdateTransactionEvent value)
        updateTransactionEvent,
    required TResult Function(_DeleteTransactionEvent value)
        deleteTransactionEvent,
    required TResult Function(_FetchTransactionsEvent value)
        fetchTransactionsEvent,
  }) {
    return deleteTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult? Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult? Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult? Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
  }) {
    return deleteTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (deleteTransactionEvent != null) {
      return deleteTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransactionEvent implements TransactionEvent {
  const factory _DeleteTransactionEvent(
      {required final dynamic transactionKey}) = _$DeleteTransactionEventImpl;

  dynamic get transactionKey;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTransactionEventImplCopyWith<_$DeleteTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTransactionsEventImplCopyWith<$Res> {
  factory _$$FetchTransactionsEventImplCopyWith(
          _$FetchTransactionsEventImpl value,
          $Res Function(_$FetchTransactionsEventImpl) then) =
      __$$FetchTransactionsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionsEventImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$FetchTransactionsEventImpl>
    implements _$$FetchTransactionsEventImplCopyWith<$Res> {
  __$$FetchTransactionsEventImplCopyWithImpl(
      _$FetchTransactionsEventImpl _value,
      $Res Function(_$FetchTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTransactionsEventImpl
    with DiagnosticableTreeMixin
    implements _FetchTransactionsEvent {
  const _$FetchTransactionsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionEvent.fetchTransactionsEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TransactionEvent.fetchTransactionsEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transaction) addTransactionEvent,
    required TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)
        updateTransactionEvent,
    required TResult Function(dynamic transactionKey) deleteTransactionEvent,
    required TResult Function() fetchTransactionsEvent,
  }) {
    return fetchTransactionsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transaction)? addTransactionEvent,
    TResult? Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult? Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult? Function()? fetchTransactionsEvent,
  }) {
    return fetchTransactionsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transaction)? addTransactionEvent,
    TResult Function(dynamic originalTransactionKey,
            TransactionModel updatedTransactionData)?
        updateTransactionEvent,
    TResult Function(dynamic transactionKey)? deleteTransactionEvent,
    TResult Function()? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (fetchTransactionsEvent != null) {
      return fetchTransactionsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) addTransactionEvent,
    required TResult Function(_UpdateTransactionEvent value)
        updateTransactionEvent,
    required TResult Function(_DeleteTransactionEvent value)
        deleteTransactionEvent,
    required TResult Function(_FetchTransactionsEvent value)
        fetchTransactionsEvent,
  }) {
    return fetchTransactionsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult? Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult? Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult? Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
  }) {
    return fetchTransactionsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? addTransactionEvent,
    TResult Function(_UpdateTransactionEvent value)? updateTransactionEvent,
    TResult Function(_DeleteTransactionEvent value)? deleteTransactionEvent,
    TResult Function(_FetchTransactionsEvent value)? fetchTransactionsEvent,
    required TResult orElse(),
  }) {
    if (fetchTransactionsEvent != null) {
      return fetchTransactionsEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactionsEvent implements TransactionEvent {
  const factory _FetchTransactionsEvent() = _$FetchTransactionsEventImpl;
}

/// @nodoc
mixin _$TransactionState {
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  TransactionStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {List<TransactionModel> transactions,
      TransactionStatus status,
      String? errorMessage});
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TransactionModel> transactions,
      TransactionStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TransactionStateImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl
    with DiagnosticableTreeMixin
    implements _TransactionState {
  const _$TransactionStateImpl(
      {final List<TransactionModel> transactions = const [],
      this.status = TransactionStatus.initial,
      this.errorMessage})
      : _transactions = transactions;

  final List<TransactionModel> _transactions;
  @override
  @JsonKey()
  List<TransactionModel> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final TransactionStatus status;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionState(transactions: $transactions, status: $status, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionState'))
      ..add(DiagnosticsProperty('transactions', transactions))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_transactions), status, errorMessage);

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {final List<TransactionModel> transactions,
      final TransactionStatus status,
      final String? errorMessage}) = _$TransactionStateImpl;

  @override
  List<TransactionModel> get transactions;
  @override
  TransactionStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of TransactionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
