part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.authenticate({required User user}) = _Authenticate;
  const factory AuthEvent.logOut() = _LogOut;
}
