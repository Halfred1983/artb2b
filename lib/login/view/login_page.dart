import 'package:auth_service/auth.dart';
import 'package:artb2b/login/bloc/login_bloc.dart';
import 'package:artb2b/login/view/login_view.dart';
import 'package:database_service/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        authService: locator<FirebaseAuthService>(),
        databaseService: locator<FirestoreDatabaseService>()
      ),
      child: Scaffold(body: LoginView()),
    );
  }
}
