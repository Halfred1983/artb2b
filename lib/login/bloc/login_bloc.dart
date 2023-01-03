import 'package:auth_service/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:database_service/database.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthService authService,
    required DatabaseService databaseService,
  })  : this._authService = authService, this._databaseService = databaseService,
        super(const LoginState()) {
    on<LoginButtonPressedEvent>(_handleLoginWithEmailAndPasswordEvent);
    on<LoginEmailChangedEvent>(_handleLoginEmailChangedEvent);
    on<LoginPasswordChangedEvent>(_handleLoginPasswordChangedEvent);
    on<LoginWithGoogleButtonPressedEvent>(_handleLoginWithGoogleEvent);
    on<LogoutButtonPressedEvent>(_handleLoout);
  }

  final AuthService _authService;
  final DatabaseService _databaseService;

  Future<void> _handleLoginEmailChangedEvent(
      LoginEmailChangedEvent event,
      Emitter<LoginState> emit,
      ) async {
    emit(state.copyWith(email: event.email));
  }

  Future<void> _handleLoginPasswordChangedEvent(
      LoginPasswordChangedEvent event,
      Emitter<LoginState> emit,
      ) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _handleLoginWithEmailAndPasswordEvent(
      LoginButtonPressedEvent event,
      Emitter<LoginState> emit,
      ) async {
    try {
      UserEntity userEntity = await _authService.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );

      await _databaseService.addUser(userEntity: Artb2bUserEntity.fromJson(userEntity.toJson()));

      emit(state.copyWith(message: 'Success', status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: LoginStatus.failure));
    }
  }

  Future<void> _handleLoginWithGoogleEvent(
      LoginWithGoogleButtonPressedEvent event,
      Emitter<LoginState> emit,
      ) async {
    try {
      UserEntity userEntity = await _authService.signInWithGoogle();

      Artb2bUserEntity artb2bUserEntity = await _databaseService.getUser(userId: userEntity.id);
      if(artb2bUserEntity == null) {
        await _databaseService.addUser(userEntity: Artb2bUserEntity.fromJson(userEntity.toJson()));
      }
      else {
        //TODO update login time
        // await _databaseService.updateUser(artb2bUserEntity: artb2bUserEntity)
      }

      emit(state.copyWith(message: 'Success', status: LoginStatus.success));
    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: LoginStatus.failure));
    }
  }

  Future<void> _handleLoout(
      LogoutButtonPressedEvent event,
      Emitter<LoginState> emit,) async {
    try {
      await _authService.logOut();
      emit(state.copyWith(message: 'Success', status: LoginStatus.loggedOut));

    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: LoginStatus.failure));
    }
  }
}
