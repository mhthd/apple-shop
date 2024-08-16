import 'package:dartz/dartz.dart';

abstract final class AuthState {}

final class AuthInitiatelState extends AuthState {}

final class AuthLoadingState extends AuthState {}

final class AuthResponseState extends AuthState {
  Either<String, String> response;
  AuthResponseState(this.response);
}
