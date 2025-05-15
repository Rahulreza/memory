

import '../../../path/file_path.dart';

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
      final title = _titleController.text.trim();
      final desc = _descController.text.trim();
      final date = _selectedDate;

      if (date == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a date')),
        );
        return;
      }

      // Create a new NoteModel instance with the updated data
      final updatedNoteData = NoteModel(
        title: title,
        description: desc,
        date: date,
      );


      if (widget.note != null) {
        // If editing an existing note, get the original key
        final originalKey = widget.note!.key;
        if (originalKey != null) {
          // Dispatch the update event with the original key and the new data
          // Use the correct named parameters as defined in NoteEvent
          context.read<NoteBloc>().add(
            NoteEvent.updateNoteEvent(originalNoteKey: originalKey, updatedNoteData: updatedNoteData),
          );
        } else {
          // This case should ideally not happen if the note comes from the box
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Error: Original note key not found.')),
          );
          return;
        }

      } else {
        // If adding a new note, dispatch the add event
        context.read<NoteBloc>().add(NoteEvent.addNoteEvent(note: updatedNoteData));
      }
    }
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
      setState(() {
        _selectedDate = picked;
      });
    }
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
      appBar: AppBar(
        title: Text(widget.note != null ? 'Edit Note' : 'Add Note'),
      ),
      body: BlocListener<NoteBloc, NoteState>(
        listener: (context, state) {
          if (state.status == NoteStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(widget.note != null
                    ? 'Note updated successfully!'
                    : 'Note added successfully!'),
              ),
            );
            Navigator.pop(context);
          } else if (state.status == NoteStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error saving note: ${state.errorMessage}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<NoteBloc, NoteState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(labelText: 'Title'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a title';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descController,
                      decoration: const InputDecoration(labelText: 'Description'),
                      maxLines: 4,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedDate != null
                                ? 'Date: ${_selectedDate!.toLocal().toString().split(' ')[0]}'
                                : 'No date selected',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: _pickDate,
                          child: const Text('Pick Date'),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: state.status == NoteStatus.loading ? null : _saveNote,
                      child: state.status == NoteStatus.loading
                          ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      )
                          : Text(widget.note != null ? 'Update Note' : 'Save Note'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
