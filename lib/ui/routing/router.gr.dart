// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../home/view/home_page.dart' as _i3;
import '../../login/view/login_page.dart' as _i1;
import '../../personal_info/view/personal_info_page.dart' as _i4;
import '../../signup/view/signup_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignupPage(),
      );
    },
    HomaRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomaPage(),
      );
    },
    PersonalInfoRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalInfoRouteArgs>(
          orElse: () => const PersonalInfoRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.PersonalInfoPage(key: args.key),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignupRoute.name,
          path: '/signup-page',
        ),
        _i5.RouteConfig(
          HomaRoute.name,
          path: '/homa-page',
        ),
        _i5.RouteConfig(
          PersonalInfoRoute.name,
          path: '/personal-info-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignupPage]
class SignupRoute extends _i5.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: '/signup-page',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i3.HomaPage]
class HomaRoute extends _i5.PageRouteInfo<void> {
  const HomaRoute()
      : super(
          HomaRoute.name,
          path: '/homa-page',
        );

  static const String name = 'HomaRoute';
}

/// generated route for
/// [_i4.PersonalInfoPage]
class PersonalInfoRoute extends _i5.PageRouteInfo<PersonalInfoRouteArgs> {
  PersonalInfoRoute({_i6.Key? key})
      : super(
          PersonalInfoRoute.name,
          path: '/personal-info-page',
          args: PersonalInfoRouteArgs(key: key),
        );

  static const String name = 'PersonalInfoRoute';
}

class PersonalInfoRouteArgs {
  const PersonalInfoRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'PersonalInfoRouteArgs{key: $key}';
  }
}
