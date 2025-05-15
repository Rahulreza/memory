


import 'core/path/file_path.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);

  Hive.registerAdapter(NoteModelAdapter());
  Hive.registerAdapter(AgeProfileModelAdapter());
  Hive.registerAdapter(TransactionTypeAdapter());
  Hive.registerAdapter(TransactionModelAdapter());

  await Hive.openBox<NoteModel>('notes');
  await Hive.openBox<AgeProfileModel>('ageProfiles');
  await Hive.openBox<TransactionModel>('transactions');

  runApp(const MyApp());
}
