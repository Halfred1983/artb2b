import 'package:artb2b/home/bloc/user_cubit.dart';
import 'package:artb2b/home/bloc/user_state.dart';
import 'package:artb2b/ui/routing/router.gr.dart';
import 'package:auth_service/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:database_service/database.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/bloc/app_bloc.dart';
import '../../injection.dart';
import '../../login/bloc/login_bloc.dart';
import '../../login/view/login_page.dart';
import '../../utils/common.dart';
import '../../widgets/map_view.dart';
import '../../widgets/map_view_2.dart';

class HomeView extends StatelessWidget {
  final FirebaseAuthService authService;
  final FirestoreDatabaseService firestoreDatabaseService;

  const HomeView({super.key, required this.authService, required this.firestoreDatabaseService});


  @override
  Widget build(BuildContext context) {
    UserEntity userEntity = authService.currentUser;
    Artb2bUserEntity? artb2bUserEntity;
    return
      BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            Widget widget = Container();
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator(),);
            }
            if (state is LoadedState) {
              artb2bUserEntity = state.artb2bUserEntity;
              widget =  MapViewTwo(artb2bUserEntityl: artb2bUserEntity!);
              // if (artb2bUserEntity.userStatus == UserStatus.initialised) {
              //   context.pushRoute(PersonalInfoRoute());
              // }
            }

            return Scaffold(
              appBar: AppBar(
                title: const Text('Home'),
              ),
              body: Container(
                padding: horizontalPadding24,
                child: Column(
                  children: [
                    artb2bUserEntity != null ? Text('Welcome! ${artb2bUserEntity!.firstName}') : Container(),
                    verticalMargin12,
                    artb2bUserEntity != null ? Text('${artb2bUserEntity!.artb2bUserEntityInfo!.userType} profile') : Container(),
                    verticalMargin12,
                    artb2bUserEntity != null ? ClipOval(child: Image.network(artb2bUserEntity!.imageUrl)) : Container(),
                    verticalMargin12,
                    widget
                  ],
                ),
              ),
              bottomNavigationBar: ElevatedButton(
                  child: Text("Logout"),
                  onPressed: () =>
                  {
                    context
                        .read<LoginBloc>()
                        .add(LogoutButtonPressedEvent()),
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    )
                  }),
            );
          }
      );
    // BlocListener<LoginBloc, LoginState>(
    //     listener: (context, state) {
    //       if (state.status == LoginStatus.loggedOut) {
    //         context.pushRoute(LoginRoute());
    //       }
    //       if (state.status == LoginStatus.failure) {
    //         ScaffoldMessenger.of(context).showSnackBar(
    //           SnackBar(
    //             content: Text(state.message),
    //           ),
    //         );
    //       }
    //     }),


  }
}
