

import '../../../../path/file_path.dart';

part 'age_profile_event.dart';
part 'age_profile_state.dart';
part 'age_profile_bloc.freezed.dart';

class AgeProfileBloc extends Bloc<AgeProfileEvent, AgeProfileState> {
  late Box<AgeProfileModel> _ageProfileBox;

  AgeProfileBloc() : super(const AgeProfileState()) {
    _init();
  }

  Future<void> _init() async {
    try {
      if (!Hive.isBoxOpen('ageProfiles')) {
        _ageProfileBox = await Hive.openBox<AgeProfileModel>('ageProfiles');
      } else {
        _ageProfileBox = Hive.box<AgeProfileModel>('ageProfiles');
      }
    } catch(e) {
      print("Error initializing AgeProfile Bloc Hive box: $e");
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }
}



