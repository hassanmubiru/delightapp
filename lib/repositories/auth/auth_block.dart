import 'dart:async';


import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';
import '../user/user_repository.dart';
import 'auth_event.dart';
import 'auth_repository.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  StreamSubscription<auth.User>? _authUserSubscription;
  StreamSubscription<User?>? _userSubscription;

  AuthBloc(
      {required AuthRepository authRepository,
      required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(AuthState.unknown()) {
    on<AuthUserChanged>(_onAuthUserChanged);

    _authUserSubscription = _authRepository.user.listen((authUser) {
      print("Auth user: $authUser");
      if (authUser != null) {
        _userRepository.getUser(authUser.uid).listen((user) {
          add(AuthUserChanged(authUser: authUser));
        });
      } else {
        add(AuthUserChanged(authUser: authUser));
      }
    }) as StreamSubscription<auth.User>?;
  }

  void _onAuthUserChanged(
    AuthUserChanged event,
    Emitter<AuthState> emit,
  ) {
    event.authUser != null
        ? emit(AuthState.authenticated(
            authUser: event.authUser!, user: event.user!))
        : emit(AuthState.unauthenticated());
  }

  @override
  Future<void> close() {
    _authUserSubscription?.cancel();
    _userSubscription?.cancel();
    return super.close();
  }
}