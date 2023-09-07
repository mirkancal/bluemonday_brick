part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loggedOut() = _LoggedOut;
  const factory LoginEvent.guestLogin() = _GuestLogin;
}
