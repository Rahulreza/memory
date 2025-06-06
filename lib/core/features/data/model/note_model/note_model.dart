import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String description;

  @HiveField(2)
  final DateTime date;

  NoteModel({required this.title, required this.description, required this.date});

  NoteModel copyWith({String? title, String? description, DateTime? date}) {
    return NoteModel(
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
    );
  }
}