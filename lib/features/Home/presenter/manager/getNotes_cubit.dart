import 'package:app/features/Home/data/repos/notes_api.dart';
import 'package:app/features/Home/presenter/manager/getNote_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(InitNote());

  Future<void> getNotes() async {
    emit(LoadingNote());
    final response = await getNotesApi();

    response.fold(
      (e) => emit(NoteFailure(e: e)),
      (notes) => emit(NoteSuccess(notes: notes)),
    );
  }
}
