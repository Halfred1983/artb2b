import 'dart:async';

import 'package:auth_service/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:database_service/database.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required FirebaseAuthService authService, required FirestoreDatabaseService firestoreDatabaseService})
      : _authenticationRepository = authService, this._firestoreDatabaseService = firestoreDatabaseService,
        super(const AppStateUnauthenticated()) {

    on<AppUserLoggedIn>(_onUserChanged);
    on<AppLogoutRequested>(_onLogoutRequested);
    on<AppLoadingEvent>(_onAppLoading);

    _userSubscription = _authenticationRepository.user.listen(
      (user) {
        if(user != UserEntity.empty()) {
          add(AppLoadingEvent());
          _firestoreDatabaseService.getUser(userId: user.id).
          then((user) => add(AppUserLoggedIn(user)));
        }
        else {
          add(AppLogoutRequested());
        }
      }
    );
  }


  final FirestoreDatabaseService _firestoreDatabaseService;
  final FirebaseAuthService _authenticationRepository;
  late final StreamSubscription<UserEntity> _userSubscription;

  void _onUserChanged(AppUserLoggedIn event, Emitter<AppState> emit) {
    emit(AppStateAuthenticated(event.artb2bUserEntity));
  }

  void _onAppLoading(AppLoadingEvent event, Emitter<AppState> emit) {
    emit(AppLoading());
  }

  void _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    emit(AppStateUnauthenticated());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
