part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}class LoginLoading extends LoginState {
  @override
  List<Object> get props => [];
}class LoginDone extends LoginState {
  final LoginModel loginModel;
  LoginDone(this.loginModel);
  @override
  List<Object> get props => [];
}class LoginError extends LoginState {
  String? error;
  LoginError(this.error);
  @override
  List<Object> get props => [];
}
