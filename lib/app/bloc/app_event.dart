part of 'app_bloc.dart';

abstract class AppEvent {
  const AppEvent();
}

class AppLogoutRequested extends AppEvent {
  const AppLogoutRequested();
}


class AppUserLoggedIn extends AppEvent {
  const AppUserLoggedIn(this.artb2bUserEntity);

  final Artb2bUserEntity artb2bUserEntity;
}

class AppLoadingEvent extends AppEvent {
  const AppLoadingEvent();
}
