import '../../../path/file_path.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  DateTime date;

  NoteModel({
    required this.title,
    required this.description,
    required this.date,
  });
}
