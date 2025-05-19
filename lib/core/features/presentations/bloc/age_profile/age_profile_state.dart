part of 'age_profile_bloc.dart';

enum AgeProfileStatus { initial, loading, success, failure }

@freezed
class AgeProfileState with _$AgeProfileState {
  const factory AgeProfileState({
    @Default([]) List<AgeProfileModel> profiles,
    @Default(AgeProfileStatus.initial) AgeProfileStatus status,
    String? errorMessage,
  }) = _AgeProfileState;
}