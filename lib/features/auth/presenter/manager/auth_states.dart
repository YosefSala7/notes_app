import 'package:app/features/auth/data/models/user_model.dart';

sealed class AuthState {}
final class AuthInitial extends AuthState {}


class SignUpSuccess extends AuthState {
  SignUpSuccess({required this.user});

  UserModel user;
}

class SignUpLoading extends AuthState {}

class SignUpFailure extends AuthState {
  SignUpFailure({required this.error});

  String error;
}

class SignInSuccess extends AuthState {
  SignInSuccess({required this.user});

  UserModel user;
}

class SignInLoading extends AuthState {}

class SignInFailure extends AuthState {
  SignInFailure({required this.error});

  String error;
}