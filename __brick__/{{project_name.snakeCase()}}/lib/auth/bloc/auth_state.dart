part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({required User user}) = Authenticated;
  const factory AuthState.unauthenticated({@Default(false) bool isFirstTime}) =
      Unauthenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.firstTime(String message) = _FirstTime;
  const factory AuthState.error(String message) = _Error;
}
