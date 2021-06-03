import 'package:split_it/modules/login/models/user_model.dart';

abstract class LoginState {}

class LoginStateEmpty extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateFailure extends LoginState {
  final String message;
  LoginStateFailure({required this.message});
}

class LoginStateSucess extends LoginState {
  final UserModel user;
  LoginStateSucess({required this.user});
}
