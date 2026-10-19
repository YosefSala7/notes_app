import 'package:app/features/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Future<Either<String, UserModel>> signupApi(
  String email,
  String password,
  String name,
) async {
  var dio = Dio();
  try {
    var response = await dio.post(
      "https://notesbackend-production-9eeb.up.railway.app/api/signup",
      data: {"name": name, "email": email, "password": password},
    );
    return right(UserModel.fromJson(response.data));
  } on DioException catch (e) {
    return left(e.toString());
  } catch (e) {
    return left(e.toString());
  }
}
