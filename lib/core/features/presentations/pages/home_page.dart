import 'dart:math';

import '../../../path/file_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Box<NoteModel> noteBox;
  final ValueNotifier<List<NoteModel>> noteListNotifier = ValueNotifier([]);

  @override
  void initState() {
    super.initState();
    noteBox = Hive.box<NoteModel>('notes');
    _loadNotes();

    // Listen to changes in the box
    noteBox.watch().listen((event) {
      _loadNotes();
    });
  }

  void _loadNotes() {
    final notes = noteBox.values.toList();
    noteListNotifier.value = List.from(notes);
  }

  @override
  void dispose() {
    noteListNotifier.dispose();
    super.dispose();
  }
  final Random random = Random();

  Color generateRandomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Notes'),centerTitle: true,),
      body: ValueListenableBuilder<List<NoteModel>>(
        valueListenable: noteListNotifier,
        builder: (context, notes, _) {
          if (notes.isEmpty) {
            return const Center(child: Text('No notes yet!'));
          }
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: generateRandomColor(), width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text(note.title,maxLines: 2,),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        '${note.description}\n${note.date.toLocal().toString().split(" ")[0]}',
                      ),Text(
                        overflow: TextOverflow.ellipsis,
                        note.date.toLocal().toString().split(" ")[0],
                      ),
                    ],
                  ),
                  isThreeLine: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (_) =>
                                AddEditNoteScreen(note: note, noteIndex: index),
                      ),
                    );
                  },
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      noteBox.deleteAt(index);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AddEditNoteScreen()),
            ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
