// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgeProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgeProfileModel profile) addProfileEvent,
    required TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)
        updateProfileEvent,
    required TResult Function(dynamic profileKey) deleteProfileEvent,
    required TResult Function() fetchProfilesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgeProfileModel profile)? addProfileEvent,
    TResult? Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult? Function(dynamic profileKey)? deleteProfileEvent,
    TResult? Function()? fetchProfilesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgeProfileModel profile)? addProfileEvent,
    TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult Function(dynamic profileKey)? deleteProfileEvent,
    TResult Function()? fetchProfilesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileEvent value) addProfileEvent,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(_DeleteProfileEvent value) deleteProfileEvent,
    required TResult Function(_FetchProfilesEvent value) fetchProfilesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileEvent value)? addProfileEvent,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult? Function(_FetchProfilesEvent value)? fetchProfilesEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileEvent value)? addProfileEvent,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult Function(_FetchProfilesEvent value)? fetchProfilesEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeProfileEventCopyWith<$Res> {
  factory $AgeProfileEventCopyWith(
          AgeProfileEvent value, $Res Function(AgeProfileEvent) then) =
      _$AgeProfileEventCopyWithImpl<$Res, AgeProfileEvent>;
}

/// @nodoc
class _$AgeProfileEventCopyWithImpl<$Res, $Val extends AgeProfileEvent>
    implements $AgeProfileEventCopyWith<$Res> {
  _$AgeProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddProfileEventImplCopyWith<$Res> {
  factory _$$AddProfileEventImplCopyWith(_$AddProfileEventImpl value,
          $Res Function(_$AddProfileEventImpl) then) =
      __$$AddProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AgeProfileModel profile});
}

/// @nodoc
class __$$AddProfileEventImplCopyWithImpl<$Res>
    extends _$AgeProfileEventCopyWithImpl<$Res, _$AddProfileEventImpl>
    implements _$$AddProfileEventImplCopyWith<$Res> {
  __$$AddProfileEventImplCopyWithImpl(
      _$AddProfileEventImpl _value, $Res Function(_$AddProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$AddProfileEventImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as AgeProfileModel,
    ));
  }
}

/// @nodoc

class _$AddProfileEventImpl implements _AddProfileEvent {
  const _$AddProfileEventImpl({required this.profile});

  @override
  final AgeProfileModel profile;

  @override
  String toString() {
    return 'AgeProfileEvent.addProfileEvent(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProfileEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProfileEventImplCopyWith<_$AddProfileEventImpl> get copyWith =>
      __$$AddProfileEventImplCopyWithImpl<_$AddProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgeProfileModel profile) addProfileEvent,
    required TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)
        updateProfileEvent,
    required TResult Function(dynamic profileKey) deleteProfileEvent,
    required TResult Function() fetchProfilesEvent,
  }) {
    return addProfileEvent(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgeProfileModel profile)? addProfileEvent,
    TResult? Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult? Function(dynamic profileKey)? deleteProfileEvent,
    TResult? Function()? fetchProfilesEvent,
  }) {
    return addProfileEvent?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgeProfileModel profile)? addProfileEvent,
    TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult Function(dynamic profileKey)? deleteProfileEvent,
    TResult Function()? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (addProfileEvent != null) {
      return addProfileEvent(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileEvent value) addProfileEvent,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(_DeleteProfileEvent value) deleteProfileEvent,
    required TResult Function(_FetchProfilesEvent value) fetchProfilesEvent,
  }) {
    return addProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileEvent value)? addProfileEvent,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult? Function(_FetchProfilesEvent value)? fetchProfilesEvent,
  }) {
    return addProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileEvent value)? addProfileEvent,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult Function(_FetchProfilesEvent value)? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (addProfileEvent != null) {
      return addProfileEvent(this);
    }
    return orElse();
  }
}

abstract class _AddProfileEvent implements AgeProfileEvent {
  const factory _AddProfileEvent({required final AgeProfileModel profile}) =
      _$AddProfileEventImpl;

  AgeProfileModel get profile;

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProfileEventImplCopyWith<_$AddProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileEventImplCopyWith<$Res> {
  factory _$$UpdateProfileEventImplCopyWith(_$UpdateProfileEventImpl value,
          $Res Function(_$UpdateProfileEventImpl) then) =
      __$$UpdateProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic originalProfileKey, AgeProfileModel updatedProfileData});
}

/// @nodoc
class __$$UpdateProfileEventImplCopyWithImpl<$Res>
    extends _$AgeProfileEventCopyWithImpl<$Res, _$UpdateProfileEventImpl>
    implements _$$UpdateProfileEventImplCopyWith<$Res> {
  __$$UpdateProfileEventImplCopyWithImpl(_$UpdateProfileEventImpl _value,
      $Res Function(_$UpdateProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalProfileKey = freezed,
    Object? updatedProfileData = null,
  }) {
    return _then(_$UpdateProfileEventImpl(
      originalProfileKey: freezed == originalProfileKey
          ? _value.originalProfileKey
          : originalProfileKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedProfileData: null == updatedProfileData
          ? _value.updatedProfileData
          : updatedProfileData // ignore: cast_nullable_to_non_nullable
              as AgeProfileModel,
    ));
  }
}

/// @nodoc

class _$UpdateProfileEventImpl implements _UpdateProfileEvent {
  const _$UpdateProfileEventImpl(
      {required this.originalProfileKey, required this.updatedProfileData});

  @override
  final dynamic originalProfileKey;
  @override
  final AgeProfileModel updatedProfileData;

  @override
  String toString() {
    return 'AgeProfileEvent.updateProfileEvent(originalProfileKey: $originalProfileKey, updatedProfileData: $updatedProfileData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEventImpl &&
            const DeepCollectionEquality()
                .equals(other.originalProfileKey, originalProfileKey) &&
            (identical(other.updatedProfileData, updatedProfileData) ||
                other.updatedProfileData == updatedProfileData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originalProfileKey),
      updatedProfileData);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      __$$UpdateProfileEventImplCopyWithImpl<_$UpdateProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgeProfileModel profile) addProfileEvent,
    required TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)
        updateProfileEvent,
    required TResult Function(dynamic profileKey) deleteProfileEvent,
    required TResult Function() fetchProfilesEvent,
  }) {
    return updateProfileEvent(originalProfileKey, updatedProfileData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgeProfileModel profile)? addProfileEvent,
    TResult? Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult? Function(dynamic profileKey)? deleteProfileEvent,
    TResult? Function()? fetchProfilesEvent,
  }) {
    return updateProfileEvent?.call(originalProfileKey, updatedProfileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgeProfileModel profile)? addProfileEvent,
    TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult Function(dynamic profileKey)? deleteProfileEvent,
    TResult Function()? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent(originalProfileKey, updatedProfileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileEvent value) addProfileEvent,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(_DeleteProfileEvent value) deleteProfileEvent,
    required TResult Function(_FetchProfilesEvent value) fetchProfilesEvent,
  }) {
    return updateProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileEvent value)? addProfileEvent,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult? Function(_FetchProfilesEvent value)? fetchProfilesEvent,
  }) {
    return updateProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileEvent value)? addProfileEvent,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult Function(_FetchProfilesEvent value)? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileEvent implements AgeProfileEvent {
  const factory _UpdateProfileEvent(
          {required final dynamic originalProfileKey,
          required final AgeProfileModel updatedProfileData}) =
      _$UpdateProfileEventImpl;

  dynamic get originalProfileKey;
  AgeProfileModel get updatedProfileData;

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileEventImplCopyWith<_$UpdateProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfileEventImplCopyWith<$Res> {
  factory _$$DeleteProfileEventImplCopyWith(_$DeleteProfileEventImpl value,
          $Res Function(_$DeleteProfileEventImpl) then) =
      __$$DeleteProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic profileKey});
}

/// @nodoc
class __$$DeleteProfileEventImplCopyWithImpl<$Res>
    extends _$AgeProfileEventCopyWithImpl<$Res, _$DeleteProfileEventImpl>
    implements _$$DeleteProfileEventImplCopyWith<$Res> {
  __$$DeleteProfileEventImplCopyWithImpl(_$DeleteProfileEventImpl _value,
      $Res Function(_$DeleteProfileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileKey = freezed,
  }) {
    return _then(_$DeleteProfileEventImpl(
      profileKey: freezed == profileKey
          ? _value.profileKey
          : profileKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DeleteProfileEventImpl implements _DeleteProfileEvent {
  const _$DeleteProfileEventImpl({required this.profileKey});

  @override
  final dynamic profileKey;

  @override
  String toString() {
    return 'AgeProfileEvent.deleteProfileEvent(profileKey: $profileKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProfileEventImpl &&
            const DeepCollectionEquality()
                .equals(other.profileKey, profileKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(profileKey));

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProfileEventImplCopyWith<_$DeleteProfileEventImpl> get copyWith =>
      __$$DeleteProfileEventImplCopyWithImpl<_$DeleteProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgeProfileModel profile) addProfileEvent,
    required TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)
        updateProfileEvent,
    required TResult Function(dynamic profileKey) deleteProfileEvent,
    required TResult Function() fetchProfilesEvent,
  }) {
    return deleteProfileEvent(profileKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgeProfileModel profile)? addProfileEvent,
    TResult? Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult? Function(dynamic profileKey)? deleteProfileEvent,
    TResult? Function()? fetchProfilesEvent,
  }) {
    return deleteProfileEvent?.call(profileKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgeProfileModel profile)? addProfileEvent,
    TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult Function(dynamic profileKey)? deleteProfileEvent,
    TResult Function()? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (deleteProfileEvent != null) {
      return deleteProfileEvent(profileKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileEvent value) addProfileEvent,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(_DeleteProfileEvent value) deleteProfileEvent,
    required TResult Function(_FetchProfilesEvent value) fetchProfilesEvent,
  }) {
    return deleteProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileEvent value)? addProfileEvent,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult? Function(_FetchProfilesEvent value)? fetchProfilesEvent,
  }) {
    return deleteProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileEvent value)? addProfileEvent,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult Function(_FetchProfilesEvent value)? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (deleteProfileEvent != null) {
      return deleteProfileEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteProfileEvent implements AgeProfileEvent {
  const factory _DeleteProfileEvent({required final dynamic profileKey}) =
      _$DeleteProfileEventImpl;

  dynamic get profileKey;

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProfileEventImplCopyWith<_$DeleteProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProfilesEventImplCopyWith<$Res> {
  factory _$$FetchProfilesEventImplCopyWith(_$FetchProfilesEventImpl value,
          $Res Function(_$FetchProfilesEventImpl) then) =
      __$$FetchProfilesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProfilesEventImplCopyWithImpl<$Res>
    extends _$AgeProfileEventCopyWithImpl<$Res, _$FetchProfilesEventImpl>
    implements _$$FetchProfilesEventImplCopyWith<$Res> {
  __$$FetchProfilesEventImplCopyWithImpl(_$FetchProfilesEventImpl _value,
      $Res Function(_$FetchProfilesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgeProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchProfilesEventImpl implements _FetchProfilesEvent {
  const _$FetchProfilesEventImpl();

  @override
  String toString() {
    return 'AgeProfileEvent.fetchProfilesEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProfilesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AgeProfileModel profile) addProfileEvent,
    required TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)
        updateProfileEvent,
    required TResult Function(dynamic profileKey) deleteProfileEvent,
    required TResult Function() fetchProfilesEvent,
  }) {
    return fetchProfilesEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AgeProfileModel profile)? addProfileEvent,
    TResult? Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult? Function(dynamic profileKey)? deleteProfileEvent,
    TResult? Function()? fetchProfilesEvent,
  }) {
    return fetchProfilesEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AgeProfileModel profile)? addProfileEvent,
    TResult Function(
            dynamic originalProfileKey, AgeProfileModel updatedProfileData)?
        updateProfileEvent,
    TResult Function(dynamic profileKey)? deleteProfileEvent,
    TResult Function()? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (fetchProfilesEvent != null) {
      return fetchProfilesEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProfileEvent value) addProfileEvent,
    required TResult Function(_UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(_DeleteProfileEvent value) deleteProfileEvent,
    required TResult Function(_FetchProfilesEvent value) fetchProfilesEvent,
  }) {
    return fetchProfilesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProfileEvent value)? addProfileEvent,
    TResult? Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult? Function(_FetchProfilesEvent value)? fetchProfilesEvent,
  }) {
    return fetchProfilesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProfileEvent value)? addProfileEvent,
    TResult Function(_UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(_DeleteProfileEvent value)? deleteProfileEvent,
    TResult Function(_FetchProfilesEvent value)? fetchProfilesEvent,
    required TResult orElse(),
  }) {
    if (fetchProfilesEvent != null) {
      return fetchProfilesEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchProfilesEvent implements AgeProfileEvent {
  const factory _FetchProfilesEvent() = _$FetchProfilesEventImpl;
}

/// @nodoc
mixin _$AgeProfileState {
  List<AgeProfileModel> get profiles => throw _privateConstructorUsedError;
  AgeProfileStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AgeProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgeProfileStateCopyWith<AgeProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeProfileStateCopyWith<$Res> {
  factory $AgeProfileStateCopyWith(
          AgeProfileState value, $Res Function(AgeProfileState) then) =
      _$AgeProfileStateCopyWithImpl<$Res, AgeProfileState>;
  @useResult
  $Res call(
      {List<AgeProfileModel> profiles,
      AgeProfileStatus status,
      String? errorMessage});
}

/// @nodoc
class _$AgeProfileStateCopyWithImpl<$Res, $Val extends AgeProfileState>
    implements $AgeProfileStateCopyWith<$Res> {
  _$AgeProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgeProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<AgeProfileModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgeProfileStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgeProfileStateImplCopyWith<$Res>
    implements $AgeProfileStateCopyWith<$Res> {
  factory _$$AgeProfileStateImplCopyWith(_$AgeProfileStateImpl value,
          $Res Function(_$AgeProfileStateImpl) then) =
      __$$AgeProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AgeProfileModel> profiles,
      AgeProfileStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$AgeProfileStateImplCopyWithImpl<$Res>
    extends _$AgeProfileStateCopyWithImpl<$Res, _$AgeProfileStateImpl>
    implements _$$AgeProfileStateImplCopyWith<$Res> {
  __$$AgeProfileStateImplCopyWithImpl(
      _$AgeProfileStateImpl _value, $Res Function(_$AgeProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgeProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AgeProfileStateImpl(
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<AgeProfileModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgeProfileStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AgeProfileStateImpl implements _AgeProfileState {
  const _$AgeProfileStateImpl(
      {final List<AgeProfileModel> profiles = const [],
      this.status = AgeProfileStatus.initial,
      this.errorMessage})
      : _profiles = profiles;

  final List<AgeProfileModel> _profiles;
  @override
  @JsonKey()
  List<AgeProfileModel> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  @JsonKey()
  final AgeProfileStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AgeProfileState(profiles: $profiles, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeProfileStateImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_profiles), status, errorMessage);

  /// Create a copy of AgeProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeProfileStateImplCopyWith<_$AgeProfileStateImpl> get copyWith =>
      __$$AgeProfileStateImplCopyWithImpl<_$AgeProfileStateImpl>(
          this, _$identity);
}

abstract class _AgeProfileState implements AgeProfileState {
  const factory _AgeProfileState(
      {final List<AgeProfileModel> profiles,
      final AgeProfileStatus status,
      final String? errorMessage}) = _$AgeProfileStateImpl;

  @override
  List<AgeProfileModel> get profiles;
  @override
  AgeProfileStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of AgeProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgeProfileStateImplCopyWith<_$AgeProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
