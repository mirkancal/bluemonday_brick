import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/app/utils/extensions/either_extensions.dart';
import 'package:{{project_name.snakeCase()}}/auth/bloc/auth_bloc.dart';
import 'package:{{project_name.snakeCase()}}/auth/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@singleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._repository, this._authBloc) : super(const _Initial()) {
    on<_GuestLogin>(_handleGuestLogin);
    on<_LogOut>(_handleLogOut);
  }

  Future<void> _handleGuestLogin(
    _GuestLogin event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(const LoginState.loading());
      final result = await _repository.signInAnonymously();
      if (result.isRight()) {
        _authBloc.add(AuthEvent.authenticate(user: result.asRight()));
      } else {
        emit(LoginState.failure(message: result.asLeft().message));
        _authBloc.add(const AuthEvent.logOut());
      }
    } catch (e) {
      emit(const LoginState.failure(message: 'An error occurred'));
    } finally {
      emit(const LoginState.initial());
    }
  }

  Future<void> _handleLogOut(
    _LogOut event,
    Emitter<LoginState> emit,
  ) async {
    _authBloc.add(const AuthEvent.logOut());
  }

  final AuthRepository _repository;
  final AuthBloc _authBloc;
}
