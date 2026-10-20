import 'package:app/features/Home/data/models/note_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Future<Either<String, List<NoteModel>>> getNotesApi() async {
  var dio = Dio();

  try {
    var response = await dio.get("https://notesbackend-production-9eeb.up.railway.app/api/notes");
    List<NoteModel> notes = [];

    for (var model in response.data) {
      notes.add(NoteModel.fromJson(model));
    }

    return right(notes);
  } on DioException catch (e) {
    return left(e.toString());
  } catch (e) {
    return left(e.toString());
  }
}
