import '../../../../path/file_path.dart';

class AddEditNoteScreen extends StatefulWidget {
  final NoteModel? note;
  const AddEditNoteScreen({super.key, this.note});

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  final _formKey = GlobalKey<FormState>();
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
    if (_formKey.currentState!.validate()) {
      if (_selectedDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a date')),
        );
        return;
      }

      final updatedNote = NoteModel(
        title: _titleController.text.trim(),
        description: _descController.text.trim(),
        date: _selectedDate!,
      );

      if (widget.note != null) {
        context.read<NoteBloc>().add(
          NoteEvent.updateNoteEvent(originalNoteKey: widget.note!.key, updatedNoteData: updatedNote),
        );
      } else {
        context.read<NoteBloc>().add(NoteEvent.addNoteEvent(note: updatedNote));
      }
    }
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.note != null ? 'Edit Note' : 'Add Note')),
      body: BlocListener<NoteBloc, NoteState>(
        listener: (context, state) {
          if (state.status == NoteStatus.success) {
            Navigator.pop(context);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Title'),
                  validator: (value) => value!.isEmpty ? 'Enter a title' : null,
                ),
                TextFormField(
                  controller: _descController,
                  decoration: const InputDecoration(labelText: 'Description'),
                  validator: (value) => value!.isEmpty ? 'Enter a description' : null,
                ),
                ElevatedButton(
                  onPressed: _pickDate,
                  child: Text(_selectedDate == null ? 'Select Date' : _selectedDate.toString()),
                ),
                const SizedBox(height: 16),
                ElevatedButton(onPressed: _saveNote, child: const Text('Save')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}