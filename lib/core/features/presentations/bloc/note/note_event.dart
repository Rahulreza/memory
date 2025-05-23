part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.addNoteEvent({required NoteModel note}) = _AddNoteEvent;
  const factory NoteEvent.updateNoteEvent({required dynamic originalNoteKey, required NoteModel updatedNoteData}) = _UpdateNoteEvent;
  const factory NoteEvent.deleteNoteEvent({required dynamic noteKey}) = _DeleteNoteEvent;
  const factory NoteEvent.fetchNotesEvent() = _FetchNotesEvent;
}