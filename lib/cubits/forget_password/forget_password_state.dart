part of 'forget_password_cubit.dart';

abstract class ForgetPasswordState extends Equatable {
  const ForgetPasswordState();
}

class ForgetPasswordInitial extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ForgetPasswordLoading extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ForgetPasswordDone extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ForgetPasswordError extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class CodeConfirmationLoading extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class CodeConfirmationDone extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class CodeConfirmationError extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ResetPasswordLoading extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ResetPasswordDone extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}class ResetPasswordError extends ForgetPasswordState {
  @override
  List<Object> get props => [];
}
