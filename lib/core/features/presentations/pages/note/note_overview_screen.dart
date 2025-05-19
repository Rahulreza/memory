
import 'dart:math';

import '../../../../path/file_path.dart';

Color getRandomColorNote() {
  Random random = Random();
  return Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

class CurvePainter extends CustomPainter {
  final Color color;

  CurvePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color.withAlpha(30) // Adjust opacity as needed
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.10, size.width * 0.5, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.40, size.width, size.height * 0.25)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

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
              final itemColor = getRandomColorNote();

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: itemColor, width: 2),
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          note.date.toLocal().toString().split(' ')[0],
                          style: TextStyle(fontSize: 16, color: Colors.grey[600],fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipPath(
                        clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: CustomPaint(
                          painter: CurvePainter(color: itemColor),
                          child: ListTile(
                            title: Text(note.title),
                            subtitle: Text(note.description,textAlign: TextAlign.justify,),
                            isThreeLine: false,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => AddEditNoteScreen(note: note)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}