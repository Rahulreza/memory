import 'package:hive/hive.dart';

part 'age_profile_model.g.dart';

@HiveType(typeId: 1) // Ensure this is a unique typeId
class AgeProfileModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final DateTime birthDate; // Changed from 'age' to 'birthDate'

  AgeProfileModel({
    required this.name,
    required this.birthDate,
  });

  // Optional: Add a copyWith method for easier updates
  AgeProfileModel copyWith({
    String? name,
    DateTime? birthDate,
  }) {
    return AgeProfileModel(
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
    );
  }

  // You can add a getter to calculate age if needed
  int get age {
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month || (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}
