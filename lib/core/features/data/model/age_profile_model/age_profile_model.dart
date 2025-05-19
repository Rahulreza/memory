import 'package:hive/hive.dart';

part 'age_profile_model.g.dart';

@HiveType(typeId: 1)
class AgeProfileModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final DateTime birthDate;

  AgeProfileModel({
    required this.name,
    required this.birthDate,
  });

  AgeProfileModel copyWith({
    String? name,
    DateTime? birthDate,
  }) {
    return AgeProfileModel(
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
    );
  }

  int get age {
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month || (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}