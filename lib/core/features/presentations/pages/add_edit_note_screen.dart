

import '../../../path/file_path.dart';

class AddEditNoteScreen extends StatefulWidget {
  final NoteModel? note;
  final int? noteIndex;

  const AddEditNoteScreen({super.key, this.note, this.noteIndex});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _titleController.text = widget.note!.title;
      _descController.text = widget.note!.description;
      _selectedDate = widget.note!.date;
    }
  }

  void _saveNote() {
    final title = _titleController.text.trim();
    final desc = _descController.text.trim();
    final date = _selectedDate;

    if (title.isEmpty || desc.isEmpty || date == null) return;

    final newNote = NoteModel(title: title, description: desc, date: date);
    final box = Hive.box<NoteModel>('notes');

    if (widget.noteIndex != null) {
      box.putAt(widget.noteIndex!, newNote);
    } else {
      box.add(newNote);
    }

    Navigator.pop(context);
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.note != null ? 'Edit Note' : 'Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 4,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  _selectedDate != null
                      ? 'Date: ${_selectedDate!.toLocal().toString().split(" ")[0]}'
                      : 'No date selected',
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _pickDate,
                  child: const Text('Pick Date'),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: _saveNote,
              child: const Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}
