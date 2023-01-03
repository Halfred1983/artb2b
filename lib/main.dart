import 'package:artb2b/app/bloc/app_bloc.dart';
import 'package:artb2b/personal_info/view/personal_info_page.dart';
import 'package:auth_service/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:database_service/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/resources/theme.dart';
import 'home/view/home_page.dart';
import 'injection.dart';
import 'ui/routing/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(BlocProvider(
      create: (context) => AppBloc(
          authService: locator<FirebaseAuthService>(),
          firestoreDatabaseService: locator<FirestoreDatabaseService>()
      ),
      child: Artb2b())
  );
}

class Artb2b extends StatelessWidget {
  final _appRouter = locator<AppRouter>();

  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;


  @override
  Widget build(BuildContext context) {

    var theme = AppTheme.theme;
    var isInitialised = false;
    var isLoggedIn = false;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        if(state is AppLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if(state is AppStateAuthenticated) {
          isLoggedIn = true;

          if(state.artb2bUserEntity.artb2bUserEntityInfo != null &&
              state.artb2bUserEntity.artb2bUserEntityInfo!.userType != null) {

            theme = state.artb2bUserEntity.artb2bUserEntityInfo!.userType == UserType.gallery ?
            AppTheme.themeArtist : AppTheme.themeGallery;

            isInitialised = state.artb2bUserEntity.userStatus != UserStatus.initialised;
          }
        }
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          title: 'Art2b2',
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate.declarative(
            _appRouter,
            routes: (_) => [
              if (isInitialised)
                HomaRoute()
              else if(isLoggedIn)
                PersonalInfoRoute()
              else
                LoginRoute(),
            ],
          ),
          color: theme.backgroundColor,
        );
      },
    );
  }

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     title: 'Material App',
//     home: RepositoryProvider(
//       create: (context) => FirebaseAuthService(
//         authService: FirebaseAuth.instance,
//       ),
//       child: LoginPage(),
//     ),
//   );
// }
}