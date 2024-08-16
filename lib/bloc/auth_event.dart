abstract final class AuthEvent {}

final class AuthLoginRequestEvent extends AuthEvent {
  String username;
  String password;
  AuthLoginRequestEvent(this.username, this.password);
}
