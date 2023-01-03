import 'package:artb2b/login/view/login_page.dart';
import 'package:artb2b/home/view/home_page.dart';
import 'package:artb2b/personal_info/view/personal_info_page.dart';
import 'package:auto_route/auto_route.dart';

import '../../home/view/home_view.dart';
import '../../signup/view/signup_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: LoginPage,
      initial: true,

    ),
    AutoRoute(
      page: SignupPage
    ),
    AutoRoute(
        page: HomaPage
    ),
    AutoRoute(
        page: PersonalInfoPage
    ),
  ],
)
class $AppRouter {}