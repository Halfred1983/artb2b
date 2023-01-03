part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

abstract class AppState extends Equatable {
  const AppState._({
    required this.status,
  });

  const AppState.authenticated()
      : this._(status: AppStatus.authenticated);

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;

  @override
  List<Object> get props => [status];
}


class AppStateUnauthenticated extends AppState {
  const AppStateUnauthenticated() : super.unauthenticated();
}

class AppStateAuthenticated extends AppState {
  final Artb2bUserEntity artb2bUserEntity;

  const AppStateAuthenticated(this.artb2bUserEntity) : super.authenticated();


  @override
  List<Object> get props => [status, artb2bUserEntity];
}

class AppLoading extends AppState {
  const AppLoading() : super.unauthenticated();
}