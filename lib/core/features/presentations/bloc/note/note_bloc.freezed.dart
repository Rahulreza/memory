// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel note) addNoteEvent,
    required TResult Function(
            dynamic originalNoteKey, NoteModel updatedNoteData)
        updateNoteEvent,
    required TResult Function(dynamic noteKey) deleteNoteEvent,
    required TResult Function() fetchNotesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel note)? addNoteEvent,
    TResult? Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult? Function(dynamic noteKey)? deleteNoteEvent,
    TResult? Function()? fetchNotesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel note)? addNoteEvent,
    TResult Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult Function(dynamic noteKey)? deleteNoteEvent,
    TResult Function()? fetchNotesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNoteEvent value) addNoteEvent,
    required TResult Function(_UpdateNoteEvent value) updateNoteEvent,
    required TResult Function(_DeleteNoteEvent value) deleteNoteEvent,
    required TResult Function(_FetchNotesEvent value) fetchNotesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNoteEvent value)? addNoteEvent,
    TResult? Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult? Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult? Function(_FetchNotesEvent value)? fetchNotesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNoteEvent value)? addNoteEvent,
    TResult Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult Function(_FetchNotesEvent value)? fetchNotesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddNoteEventImplCopyWith<$Res> {
  factory _$$AddNoteEventImplCopyWith(
          _$AddNoteEventImpl value, $Res Function(_$AddNoteEventImpl) then) =
      __$$AddNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteModel note});
}

/// @nodoc
class __$$AddNoteEventImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$AddNoteEventImpl>
    implements _$$AddNoteEventImplCopyWith<$Res> {
  __$$AddNoteEventImplCopyWithImpl(
      _$AddNoteEventImpl _value, $Res Function(_$AddNoteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$AddNoteEventImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
    ));
  }
}

/// @nodoc

class _$AddNoteEventImpl implements _AddNoteEvent {
  const _$AddNoteEventImpl({required this.note});

  @override
  final NoteModel note;

  @override
  String toString() {
    return 'NoteEvent.addNoteEvent(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteEventImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteEventImplCopyWith<_$AddNoteEventImpl> get copyWith =>
      __$$AddNoteEventImplCopyWithImpl<_$AddNoteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel note) addNoteEvent,
    required TResult Function(
            dynamic originalNoteKey, NoteModel updatedNoteData)
        updateNoteEvent,
    required TResult Function(dynamic noteKey) deleteNoteEvent,
    required TResult Function() fetchNotesEvent,
  }) {
    return addNoteEvent(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel note)? addNoteEvent,
    TResult? Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult? Function(dynamic noteKey)? deleteNoteEvent,
    TResult? Function()? fetchNotesEvent,
  }) {
    return addNoteEvent?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel note)? addNoteEvent,
    TResult Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult Function(dynamic noteKey)? deleteNoteEvent,
    TResult Function()? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (addNoteEvent != null) {
      return addNoteEvent(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNoteEvent value) addNoteEvent,
    required TResult Function(_UpdateNoteEvent value) updateNoteEvent,
    required TResult Function(_DeleteNoteEvent value) deleteNoteEvent,
    required TResult Function(_FetchNotesEvent value) fetchNotesEvent,
  }) {
    return addNoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNoteEvent value)? addNoteEvent,
    TResult? Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult? Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult? Function(_FetchNotesEvent value)? fetchNotesEvent,
  }) {
    return addNoteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNoteEvent value)? addNoteEvent,
    TResult Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult Function(_FetchNotesEvent value)? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (addNoteEvent != null) {
      return addNoteEvent(this);
    }
    return orElse();
  }
}

abstract class _AddNoteEvent implements NoteEvent {
  const factory _AddNoteEvent({required final NoteModel note}) =
      _$AddNoteEventImpl;

  NoteModel get note;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNoteEventImplCopyWith<_$AddNoteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNoteEventImplCopyWith<$Res> {
  factory _$$UpdateNoteEventImplCopyWith(_$UpdateNoteEventImpl value,
          $Res Function(_$UpdateNoteEventImpl) then) =
      __$$UpdateNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic originalNoteKey, NoteModel updatedNoteData});
}

/// @nodoc
class __$$UpdateNoteEventImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$UpdateNoteEventImpl>
    implements _$$UpdateNoteEventImplCopyWith<$Res> {
  __$$UpdateNoteEventImplCopyWithImpl(
      _$UpdateNoteEventImpl _value, $Res Function(_$UpdateNoteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalNoteKey = freezed,
    Object? updatedNoteData = null,
  }) {
    return _then(_$UpdateNoteEventImpl(
      originalNoteKey: freezed == originalNoteKey
          ? _value.originalNoteKey
          : originalNoteKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedNoteData: null == updatedNoteData
          ? _value.updatedNoteData
          : updatedNoteData // ignore: cast_nullable_to_non_nullable
              as NoteModel,
    ));
  }
}

/// @nodoc

class _$UpdateNoteEventImpl implements _UpdateNoteEvent {
  const _$UpdateNoteEventImpl(
      {required this.originalNoteKey, required this.updatedNoteData});

  @override
  final dynamic originalNoteKey;
  @override
  final NoteModel updatedNoteData;

  @override
  String toString() {
    return 'NoteEvent.updateNoteEvent(originalNoteKey: $originalNoteKey, updatedNoteData: $updatedNoteData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoteEventImpl &&
            const DeepCollectionEquality()
                .equals(other.originalNoteKey, originalNoteKey) &&
            (identical(other.updatedNoteData, updatedNoteData) ||
                other.updatedNoteData == updatedNoteData));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(originalNoteKey), updatedNoteData);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoteEventImplCopyWith<_$UpdateNoteEventImpl> get copyWith =>
      __$$UpdateNoteEventImplCopyWithImpl<_$UpdateNoteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel note) addNoteEvent,
    required TResult Function(
            dynamic originalNoteKey, NoteModel updatedNoteData)
        updateNoteEvent,
    required TResult Function(dynamic noteKey) deleteNoteEvent,
    required TResult Function() fetchNotesEvent,
  }) {
    return updateNoteEvent(originalNoteKey, updatedNoteData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel note)? addNoteEvent,
    TResult? Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult? Function(dynamic noteKey)? deleteNoteEvent,
    TResult? Function()? fetchNotesEvent,
  }) {
    return updateNoteEvent?.call(originalNoteKey, updatedNoteData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel note)? addNoteEvent,
    TResult Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult Function(dynamic noteKey)? deleteNoteEvent,
    TResult Function()? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (updateNoteEvent != null) {
      return updateNoteEvent(originalNoteKey, updatedNoteData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNoteEvent value) addNoteEvent,
    required TResult Function(_UpdateNoteEvent value) updateNoteEvent,
    required TResult Function(_DeleteNoteEvent value) deleteNoteEvent,
    required TResult Function(_FetchNotesEvent value) fetchNotesEvent,
  }) {
    return updateNoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNoteEvent value)? addNoteEvent,
    TResult? Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult? Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult? Function(_FetchNotesEvent value)? fetchNotesEvent,
  }) {
    return updateNoteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNoteEvent value)? addNoteEvent,
    TResult Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult Function(_FetchNotesEvent value)? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (updateNoteEvent != null) {
      return updateNoteEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateNoteEvent implements NoteEvent {
  const factory _UpdateNoteEvent(
      {required final dynamic originalNoteKey,
      required final NoteModel updatedNoteData}) = _$UpdateNoteEventImpl;

  dynamic get originalNoteKey;
  NoteModel get updatedNoteData;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNoteEventImplCopyWith<_$UpdateNoteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteEventImplCopyWith<$Res> {
  factory _$$DeleteNoteEventImplCopyWith(_$DeleteNoteEventImpl value,
          $Res Function(_$DeleteNoteEventImpl) then) =
      __$$DeleteNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic noteKey});
}

/// @nodoc
class __$$DeleteNoteEventImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteNoteEventImpl>
    implements _$$DeleteNoteEventImplCopyWith<$Res> {
  __$$DeleteNoteEventImplCopyWithImpl(
      _$DeleteNoteEventImpl _value, $Res Function(_$DeleteNoteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteKey = freezed,
  }) {
    return _then(_$DeleteNoteEventImpl(
      noteKey: freezed == noteKey
          ? _value.noteKey
          : noteKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DeleteNoteEventImpl implements _DeleteNoteEvent {
  const _$DeleteNoteEventImpl({required this.noteKey});

  @override
  final dynamic noteKey;

  @override
  String toString() {
    return 'NoteEvent.deleteNoteEvent(noteKey: $noteKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteEventImpl &&
            const DeepCollectionEquality().equals(other.noteKey, noteKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(noteKey));

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteEventImplCopyWith<_$DeleteNoteEventImpl> get copyWith =>
      __$$DeleteNoteEventImplCopyWithImpl<_$DeleteNoteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel note) addNoteEvent,
    required TResult Function(
            dynamic originalNoteKey, NoteModel updatedNoteData)
        updateNoteEvent,
    required TResult Function(dynamic noteKey) deleteNoteEvent,
    required TResult Function() fetchNotesEvent,
  }) {
    return deleteNoteEvent(noteKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel note)? addNoteEvent,
    TResult? Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult? Function(dynamic noteKey)? deleteNoteEvent,
    TResult? Function()? fetchNotesEvent,
  }) {
    return deleteNoteEvent?.call(noteKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel note)? addNoteEvent,
    TResult Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult Function(dynamic noteKey)? deleteNoteEvent,
    TResult Function()? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (deleteNoteEvent != null) {
      return deleteNoteEvent(noteKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNoteEvent value) addNoteEvent,
    required TResult Function(_UpdateNoteEvent value) updateNoteEvent,
    required TResult Function(_DeleteNoteEvent value) deleteNoteEvent,
    required TResult Function(_FetchNotesEvent value) fetchNotesEvent,
  }) {
    return deleteNoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNoteEvent value)? addNoteEvent,
    TResult? Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult? Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult? Function(_FetchNotesEvent value)? fetchNotesEvent,
  }) {
    return deleteNoteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNoteEvent value)? addNoteEvent,
    TResult Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult Function(_FetchNotesEvent value)? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (deleteNoteEvent != null) {
      return deleteNoteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteNoteEvent implements NoteEvent {
  const factory _DeleteNoteEvent({required final dynamic noteKey}) =
      _$DeleteNoteEventImpl;

  dynamic get noteKey;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteEventImplCopyWith<_$DeleteNoteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchNotesEventImplCopyWith<$Res> {
  factory _$$FetchNotesEventImplCopyWith(_$FetchNotesEventImpl value,
          $Res Function(_$FetchNotesEventImpl) then) =
      __$$FetchNotesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNotesEventImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$FetchNotesEventImpl>
    implements _$$FetchNotesEventImplCopyWith<$Res> {
  __$$FetchNotesEventImplCopyWithImpl(
      _$FetchNotesEventImpl _value, $Res Function(_$FetchNotesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchNotesEventImpl implements _FetchNotesEvent {
  const _$FetchNotesEventImpl();

  @override
  String toString() {
    return 'NoteEvent.fetchNotesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNotesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoteModel note) addNoteEvent,
    required TResult Function(
            dynamic originalNoteKey, NoteModel updatedNoteData)
        updateNoteEvent,
    required TResult Function(dynamic noteKey) deleteNoteEvent,
    required TResult Function() fetchNotesEvent,
  }) {
    return fetchNotesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoteModel note)? addNoteEvent,
    TResult? Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult? Function(dynamic noteKey)? deleteNoteEvent,
    TResult? Function()? fetchNotesEvent,
  }) {
    return fetchNotesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoteModel note)? addNoteEvent,
    TResult Function(dynamic originalNoteKey, NoteModel updatedNoteData)?
        updateNoteEvent,
    TResult Function(dynamic noteKey)? deleteNoteEvent,
    TResult Function()? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (fetchNotesEvent != null) {
      return fetchNotesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNoteEvent value) addNoteEvent,
    required TResult Function(_UpdateNoteEvent value) updateNoteEvent,
    required TResult Function(_DeleteNoteEvent value) deleteNoteEvent,
    required TResult Function(_FetchNotesEvent value) fetchNotesEvent,
  }) {
    return fetchNotesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNoteEvent value)? addNoteEvent,
    TResult? Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult? Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult? Function(_FetchNotesEvent value)? fetchNotesEvent,
  }) {
    return fetchNotesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNoteEvent value)? addNoteEvent,
    TResult Function(_UpdateNoteEvent value)? updateNoteEvent,
    TResult Function(_DeleteNoteEvent value)? deleteNoteEvent,
    TResult Function(_FetchNotesEvent value)? fetchNotesEvent,
    required TResult orElse(),
  }) {
    if (fetchNotesEvent != null) {
      return fetchNotesEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchNotesEvent implements NoteEvent {
  const factory _FetchNotesEvent() = _$FetchNotesEventImpl;
}

/// @nodoc
mixin _$NoteState {
  List<NoteModel> get notes => throw _privateConstructorUsedError;
  NoteStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call({List<NoteModel> notes, NoteStatus status, String? errorMessage});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteStateImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteStateImplCopyWith(
          _$NoteStateImpl value, $Res Function(_$NoteStateImpl) then) =
      __$$NoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteModel> notes, NoteStatus status, String? errorMessage});
}

/// @nodoc
class __$$NoteStateImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateImpl>
    implements _$$NoteStateImplCopyWith<$Res> {
  __$$NoteStateImplCopyWithImpl(
      _$NoteStateImpl _value, $Res Function(_$NoteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NoteStateImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoteStateImpl implements _NoteState {
  const _$NoteStateImpl(
      {final List<NoteModel> notes = const [],
      this.status = NoteStatus.initial,
      this.errorMessage})
      : _notes = notes;

  final List<NoteModel> _notes;
  @override
  @JsonKey()
  List<NoteModel> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey()
  final NoteStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NoteState(notes: $notes, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notes), status, errorMessage);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      __$$NoteStateImplCopyWithImpl<_$NoteStateImpl>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  const factory _NoteState(
      {final List<NoteModel> notes,
      final NoteStatus status,
      final String? errorMessage}) = _$NoteStateImpl;

  @override
  List<NoteModel> get notes;
  @override
  NoteStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
