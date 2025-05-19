import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../path/file_path.dart';

part 'age_profile_event.dart';
part 'age_profile_state.dart';
part 'age_profile_bloc.freezed.dart';

class AgeProfileBloc extends Bloc<AgeProfileEvent, AgeProfileState> {
  late Box<AgeProfileModel> _ageProfileBox;

  AgeProfileBloc() : super(const AgeProfileState()) {
    on<_AddProfileEvent>(_onAddProfile);
    on<_UpdateProfileEvent>(_onUpdateProfile);
    on<_DeleteProfileEvent>(_onDeleteProfile);
    on<_FetchProfilesEvent>(_onFetchProfiles);

    _init();
  }

  Future<void> _init() async {
    try {
      emit(state.copyWith(status: AgeProfileStatus.loading));

      if (!Hive.isBoxOpen('ageProfiles')) {
        _ageProfileBox = await Hive.openBox<AgeProfileModel>('ageProfiles');
      } else {
        _ageProfileBox = Hive.box<AgeProfileModel>('ageProfiles');
      }
      add(const AgeProfileEvent.fetchProfilesEvent());
    } catch(e, stackTrace) {
      print("Error initializing AgeProfile Bloc Hive box: $e\n$stackTrace");
      emit(state.copyWith(
        status: AgeProfileStatus.failure,
        errorMessage: 'Failed to initialize database: $e',
      ));
    }
  }

  Future<void> _onAddProfile(_AddProfileEvent event, Emitter<AgeProfileState> emit) async {
    emit(state.copyWith(status: AgeProfileStatus.loading));
    try {
      await _ageProfileBox.add(event.profile);
      add(const AgeProfileEvent.fetchProfilesEvent());
    } catch (e, stackTrace) {
      print("Error adding profile: $e\n$stackTrace");
      emit(state.copyWith(
        status: AgeProfileStatus.failure,
        errorMessage: 'Failed to add profile: $e',
      ));
    }
  }

  Future<void> _onUpdateProfile(_UpdateProfileEvent event, Emitter<AgeProfileState> emit) async {
    emit(state.copyWith(status: AgeProfileStatus.loading));
    try {
      await _ageProfileBox.put(event.originalProfileKey, event.updatedProfileData);
      add(const AgeProfileEvent.fetchProfilesEvent());
    } catch (e, stackTrace) {
      print("Error updating profile: $e\n$stackTrace");
      emit(state.copyWith(
        status: AgeProfileStatus.failure,
        errorMessage: 'Failed to update profile: $e',
      ));
    }
  }

  Future<void> _onDeleteProfile(_DeleteProfileEvent event, Emitter<AgeProfileState> emit) async {
    emit(state.copyWith(status: AgeProfileStatus.loading));
    try {
      await _ageProfileBox.delete(event.profileKey);
      add(const AgeProfileEvent.fetchProfilesEvent());
    } catch (e, stackTrace) {
      print("Error deleting profile: $e\n$stackTrace");
      emit(state.copyWith(
        status: AgeProfileStatus.failure,
        errorMessage: 'Failed to delete profile: $e',
      ));
    }
  }

  Future<void> _onFetchProfiles(_FetchProfilesEvent event, Emitter<AgeProfileState> emit) async {
    emit(state.copyWith(status: AgeProfileStatus.loading));
    try {
      final profiles = _ageProfileBox.values.toList();
      emit(state.copyWith(
        profiles: profiles,
        status: AgeProfileStatus.success,
        errorMessage: null,
      ));
    } catch (e, stackTrace) {
      print("Error fetching profiles: $e\n$stackTrace");
      emit(state.copyWith(
        status: AgeProfileStatus.failure,
        errorMessage: 'Failed to fetch profiles: $e',
      ));
    }
  }

  @override
  Future<void> close() async {
    await _ageProfileBox.close();
    return super.close();
  }
}