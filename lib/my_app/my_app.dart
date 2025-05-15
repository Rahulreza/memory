import '../core/path/file_path.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final NoteBloc _noteBloc;
  late final AgeProfileBloc _ageProfileBloc;
  late final TransactionBloc _transactionBloc;

  @override
  void initState() {
    super.initState();
    _noteBloc = NoteBloc();
    _ageProfileBloc = AgeProfileBloc();
    _transactionBloc = TransactionBloc();
  }

  @override
  void dispose() {
    _noteBloc.close();
    _ageProfileBloc.close();
    _transactionBloc.close();
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<NoteBloc>.value(value: _noteBloc),
            BlocProvider<AgeProfileBloc>.value(value: _ageProfileBloc),
            BlocProvider<TransactionBloc>.value(value: _transactionBloc),
          ],
          child: MaterialApp(
            title: 'Memory',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomeScreen(),
          ),
        );
      },
    );
  }
}
