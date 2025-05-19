// age_profile_model.dart
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

  // --- ADD THIS NEW GETTER ---
  String get ageInDetail {
    final now = DateTime.now();
    var years = now.year - birthDate.year;
    var months = now.month - birthDate.month;
    var days = now.day - birthDate.day;

    // Adjust for cases where current day is before birth day in the month
    if (days < 0) {
      months--;
      // Get the number of days in the previous month (relative to 'now')
      final lastDayOfPrevMonth = DateTime(now.year, now.month, 0); // Day 0 of current month gives last day of previous month
      days += lastDayOfPrevMonth.day;
    }

    // Adjust for cases where current month is before birth month in the year
    if (months < 0) {
      years--;
      months += 12; // Add 12 months to make it positive
    }

    return '$years year${years == 1 ? '' : 's'} '
        '$months month${months == 1 ? '' : 's'} '
        '$days day${days == 1 ? '' : 's'}';
  }
}