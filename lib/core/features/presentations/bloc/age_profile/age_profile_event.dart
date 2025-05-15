part of 'age_profile_bloc.dart';

@freezed
class AgeProfileEvent with _$AgeProfileEvent {
  const factory AgeProfileEvent.addProfileEvent({required AgeProfileModel profile}) = _AddProfileEvent;
  const factory AgeProfileEvent.updateProfileEvent({required dynamic originalProfileKey, required AgeProfileModel updatedProfileData}) = _UpdateProfileEvent;
  const factory AgeProfileEvent.deleteProfileEvent({required dynamic profileKey}) = _DeleteProfileEvent;
  const factory AgeProfileEvent.fetchProfilesEvent() = _FetchProfilesEvent;
}
