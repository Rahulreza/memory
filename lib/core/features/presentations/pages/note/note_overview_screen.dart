
import '../../../../path/file_path.dart';


class NoteOverviewScreen extends StatelessWidget {
  const NoteOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AddEditNoteScreen()),
        ),
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<NoteBloc, NoteState>(
        builder: (context, state) {
          if (state.status == NoteStatus.loading && state.notes.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == NoteStatus.failure) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else if (state.notes.isEmpty) {
            return const Center(child: Text('No notes yet. Add one!'));
          }

          return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              final note = state.notes[index];
              return ListTile(
                title: Text(note.title),
                subtitle: Text('${note.description}\n${note.date.toLocal().toString().split(' ')[0]}'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AddEditNoteScreen(note: note)),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
