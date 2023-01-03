import 'package:artb2b/signup/bloc/signup_bloc.dart';
import 'package:artb2b/signup/view/signup_view.dart';
import 'package:auth_service/auth.dart';
import 'package:database_service/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(
        authService: locator<FirebaseAuthService>(),
        databaseService: locator<FirestoreDatabaseService>()
      ),
      child: SignUpView(),
    );
  }
}
