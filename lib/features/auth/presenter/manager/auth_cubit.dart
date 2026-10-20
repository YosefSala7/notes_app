import 'package:app/features/auth/data/repos/signin_api.dart';
import 'package:app/features/auth/data/repos/signup_api.dart';
import 'package:app/features/auth/presenter/manager/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> signin(String email, String password) async {
    emit(SignInLoading());
    var response = await signinApi(email, password);

    response.fold(
      (error) {
        emit(SignInFailure(error: error));
      },
      (user) {
        emit(SignInSuccess(user: user));
      },
    );
  }

  Future<void> signup(String name, String email, String password) async {
    emit(SignUpLoading());
    var response = await signupApi(email, password, name);

    response.fold(
      (error) {
        emit(SignUpFailure(error: error));
      },
      (user) {
        emit(SignUpSuccess(user: user));
      },
    );
  }
}
