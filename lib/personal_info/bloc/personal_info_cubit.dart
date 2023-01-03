import 'package:artb2b/personal_info/bloc/personal_info_state.dart';
import 'package:database_service/database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  PersonalInfoCubit({required this.databaseService,
    required this.userId}) : super(InitialState(Artb2bUserEntityInfo(userType: UserType.unknown)));

  final DatabaseService databaseService;
  final String userId;


  void chooseUserType(UserType userType) {
    Artb2bUserEntityInfo artb2bUserEntityInfo = this.state.props[0] as Artb2bUserEntityInfo;

    try {
      emit(LoadingState());

      artb2bUserEntityInfo = artb2bUserEntityInfo.copyWith(userType: userType);

      emit(UserTypeChosen(artb2bUserEntityInfo));
    } catch (e) {
      emit(ErrorState(artb2bUserEntityInfo));
    }
  }

  void chooseName(String name) {
    Artb2bUserEntityInfo artb2bUserEntityInfo = this.state.props[0] as Artb2bUserEntityInfo;

    try {
      emit(LoadingState());

      artb2bUserEntityInfo = artb2bUserEntityInfo.copyWith(name: name);

      emit(NameChosen(artb2bUserEntityInfo));
    } catch (e) {
      emit(ErrorState(artb2bUserEntityInfo));
    }
  }

  void chooseAddress(Artb2bUserEntityAddress artb2bUserEntityAddress) {
    Artb2bUserEntityInfo artb2bUserEntityInfo = this.state.props[0] as Artb2bUserEntityInfo;

    try {
      emit(LoadingState());

      artb2bUserEntityInfo = artb2bUserEntityInfo.copyWith(address: artb2bUserEntityAddress);

      emit(AddressChosen(artb2bUserEntityInfo));
    } catch (e) {
      emit(ErrorState(artb2bUserEntityInfo));
    }
  }

  void save() async {
    Artb2bUserEntityInfo artb2bUserEntityInfo = this.state.props[0] as Artb2bUserEntityInfo;

    try {
      emit(LoadingState());
      Artb2bUserEntity artb2bUserEntity = await databaseService.getUser(
          userId: userId);

      //if all is good set to personal info
      artb2bUserEntity =
          artb2bUserEntity.copyWith.artb2bUserEntityInfo(artb2bUserEntityInfo)
              .copyWith(userStatus: UserStatus.personalInfo);
      await databaseService.updateUser(artb2bUserEntity: artb2bUserEntity);
      emit(DataSaved(artb2bUserEntityInfo));
    } catch (e) {
      emit(ErrorState(artb2bUserEntityInfo));
    }
  }


// void getUser(String userId) async {
//   try {
//     emit(LoadingState());
//     final user = await databaseService.getUser(userId: userId);
//     emit(LoadedState(user));
//   } catch (e) {
//     emit(ErrorState());
//   }
// }
}