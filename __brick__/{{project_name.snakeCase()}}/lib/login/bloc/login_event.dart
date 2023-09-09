part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.logOut() = _LogOut;
  const factory LoginEvent.guestLogin() = _GuestLogin;
}
