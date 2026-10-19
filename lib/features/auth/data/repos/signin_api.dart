import 'package:app/features/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


Future<Either<String, UserModel>> signinApi(
  String email,
  String password,
) async {
  var dio = Dio();
  try {
    var response = await dio.post(
      "https://notesbackend-production-9eeb.up.railway.app/api/login",
      data: {"email": email, "password": password},
    );
    return right(UserModel.fromJson(response.data));
  } on DioException catch (e) {
    return left(e.toString());
  } catch (e) {
    return left(e.toString());
  }
}
