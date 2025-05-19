part of 'note_bloc.dart';

enum NoteStatus { initial, loading, success, failure }

@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    @Default([]) List<NoteModel> notes,
    @Default(NoteStatus.initial) NoteStatus status,
    String? errorMessage,
  }) = _NoteState;
}