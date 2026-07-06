import 'package:happy_tech_mastering_api_with_flutter/models/user_model.dart';

class UserState {}

final class UserInitial extends UserState {}

final class UploadProfilePic extends UserState {}

final class SignInSucsses extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class SignUpSucsses extends UserState {
  final String message;

  SignUpSucsses({required this.message});
}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class GetUserSuccess extends UserState {
  final UserModel user;

  GetUserSuccess({required this.user});
}

final class GetUserLoading extends UserState {}

final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}
