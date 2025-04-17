import '../../../path/file_path.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  late Box<NoteModel> noteBox;

  NoteBloc() : super(const NoteState.initial()) {
    _init();
    on<LoadNotes>(_onLoadNotes);
    on<AddNote>(_onAddNote);
    on<UpdateNote>(_onUpdateNote);
    on<DeleteNote>(_onDeleteNote);
  }

  void _init() async {
    noteBox = Hive.box<NoteModel>('notes');
    add(const LoadNotes());
  }

  void _onLoadNotes(LoadNotes event, Emitter<NoteState> emit) {
    emit(NoteState.loaded(noteBox.values.toList()));
  }

  void _onAddNote(AddNote event, Emitter<NoteState> emit) async {
    await noteBox.add(event.note);
    add(const LoadNotes());
  }

  void _onUpdateNote(UpdateNote event, Emitter<NoteState> emit) async {
    await noteBox.putAt(event.index, event.note);
    add(const LoadNotes());
  }

  void _onDeleteNote(DeleteNote event, Emitter<NoteState> emit) async {
    await noteBox.deleteAt(event.index);
    add(const LoadNotes());
  }
}
