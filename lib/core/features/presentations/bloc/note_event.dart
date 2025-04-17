part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.loadNotes() = LoadNotes;
  const factory NoteEvent.addNote(NoteModel note) = AddNote;
  const factory NoteEvent.updateNote({required int index, required NoteModel note}) = UpdateNote;
  const factory NoteEvent.deleteNote(int index) = DeleteNote;
}
