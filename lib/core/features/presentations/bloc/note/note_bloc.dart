import '../../../../path/file_path.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  late Box<NoteModel> _noteBox;

  NoteBloc() : super(const NoteState()) {
    on<_AddNoteEvent>(_onAddNote);
    on<_UpdateNoteEvent>(_onUpdateNote);
    on<_DeleteNoteEvent>(_onDeleteNote);
    on<_FetchNotesEvent>(_onFetchNotes);

    _init();
  }

  Future<void> _init() async {
    if (!Hive.isBoxOpen('notes')) {
      _noteBox = await Hive.openBox<NoteModel>('notes');
    } else {
      _noteBox = Hive.box<NoteModel>('notes');
    }
    add(const NoteEvent.fetchNotesEvent());
    _noteBox.watch().listen((_) => add(const NoteEvent.fetchNotesEvent()));
  }

  Future<void> _onAddNote(_AddNoteEvent event, Emitter<NoteState> emit) async {
    emit(state.copyWith(status: NoteStatus.loading));
    try {
      await _noteBox.add(event.note);
    } catch (e) {
      emit(state.copyWith(status: NoteStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onUpdateNote(_UpdateNoteEvent event, Emitter<NoteState> emit) async {
    emit(state.copyWith(status: NoteStatus.loading));
    try {
      await _noteBox.put(event.originalNoteKey, event.updatedNoteData);
    } catch (e) {
      emit(state.copyWith(status: NoteStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onDeleteNote(_DeleteNoteEvent event, Emitter<NoteState> emit) async {
    emit(state.copyWith(status: NoteStatus.loading));
    try {
      await _noteBox.delete(event.noteKey);
    } catch (e) {
      emit(state.copyWith(status: NoteStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onFetchNotes(_FetchNotesEvent event, Emitter<NoteState> emit) async {
    emit(state.copyWith(status: NoteStatus.loading));
    try {
      final notes = _noteBox.values.toList();
      emit(state.copyWith(status: NoteStatus.success, notes: notes, errorMessage: null));
    } catch (e) {
      emit(state.copyWith(status: NoteStatus.failure, errorMessage: e.toString()));
    }
  }
}