import 'package:app/features/Home/data/models/note_model.dart';

class NoteState{}
class InitNote extends NoteState {}
class LoadingNote extends NoteState {}

class NoteSuccess extends NoteState {
  List<NoteModel> notes;
  NoteSuccess({required this.notes});
}
class NoteFailure extends NoteState {
  String e;
  NoteFailure({required this.e});
}