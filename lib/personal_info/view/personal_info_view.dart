import 'package:artb2b/home/view/home_page.dart';
import 'package:artb2b/personal_info/bloc/personal_info_cubit.dart';
import 'package:artb2b/personal_info/bloc/personal_info_state.dart';
import 'package:artb2b/widgets/app_dropdown.dart';
import 'package:artb2b/widgets/app_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:database_service/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/routing/router.gr.dart';
import '../../utils/common.dart';
import '../../widgets/app_input_validators.dart';
import '../../widgets/google_places.dart';

class PersonalInfoView extends StatelessWidget {
  PersonalInfoView({Key? key}) : super(key: key);


  String background = "assets/images/pin.png";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
      builder: (context, state) {
        if( state is LoadingState) {
          return const CircularProgressIndicator();
        }
        if (state is UserTypeChosen) {
          final userType = state.artb2bUserEntityInfo.userType;
          if (userType == UserType.artist) {
            background = 'assets/images/artist.jpeg';
          }
          else if (userType == UserType.gallery) {
            background = 'assets/images/gallery.jpeg';
          }
        }
        if(state is DataSaved) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomaPage()),
          );
        }
        return Scaffold(
            appBar: AppBar(
              title: const Text('Personal Info'),
              centerTitle: true,
            ),
            body: Container(
                padding: horizontalPadding24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(background)
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      _UserTypeDropdownButton(),
                      SizedBox(height: 30.0),
                      _UserNameTextField((nameValue) => {
                        context.read<PersonalInfoCubit>().chooseName(nameValue),
                      }),
                      SizedBox(height: 30.0),
                      const _LocationTextField(),
                    ]
                )
            ),
            bottomNavigationBar: Container(
                padding: buttonPadding,
                child: ElevatedButton(onPressed: () {
                  context.read<PersonalInfoCubit>().save();
                }, child: Text("Continue"),)
            )
        );
      },
    );
  }
}



class _UserTypeDropdownButton extends StatelessWidget {
  const _UserTypeDropdownButton();

  @override
  Widget build(BuildContext context) {
    const userTypes = UserType.values;
    UserType start = UserType.unknown;

    return BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
        builder: (context, state) {
          if(state.props[0] is Artb2bUserEntityInfo) {
            start = (state.props[0] as Artb2bUserEntityInfo).userType!;
          }
          return Material(
            child: AppDropdownField<UserType>(
              key: const Key('newCarForm_brand_dropdownButton'),
              items: userTypes.isNotEmpty
                  ? userTypes.map((type) {
                print(type.name);
                return DropdownMenuItem(value: type, child: Text(type.name));
              }).toList()
                  : const [],
              value:start ,
              labelText: 'Are you an artist or a gallery',
              onChanged: (userTypeChosen) {
                start = userTypeChosen!;
                context.read<PersonalInfoCubit>().chooseUserType(userTypeChosen!);
              },
            ),
          );
        }
    );
  }
}
class _UserNameTextField extends StatefulWidget {
  const _UserNameTextField(this.nameChanged);
  final ValueChanged<String> nameChanged;


  @override
  State<_UserNameTextField> createState() => _UserNameTextFieldState(nameChanged);
}

class _UserNameTextFieldState extends State<_UserNameTextField> {

  late final TextEditingController _documentNumberController;
  final ValueChanged<String> _nameChanged;

  _UserNameTextFieldState(this._nameChanged);

  @override
  void initState() {
    super.initState();
    _documentNumberController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _documentNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  AppTextField(
      key: const Key('Name of artist/gallery'),
      controller: _documentNumberController,
      labelText: 'Name',
      validator: AppInputValidators.required(
          'Name of the artist/gallery required'),
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      autoCorrect: false,
      onChanged: _nameChanged,
    );
  }
}

class _LocationTextField extends StatefulWidget {
  const _LocationTextField();


  @override
  State<_LocationTextField> createState() => _LocationTextFieldState();
}

class _LocationTextFieldState extends State<_LocationTextField> {

  late Artb2bUserEntityAddress _address;
  late final TextEditingController _locationController;

  _LocationTextFieldState();

  @override
  void initState() {
    super.initState();
    _locationController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      AppTextField(
        // focusNode: focusNode,
        key: const Key('Location'),
        controller: _locationController,
        labelText: 'Location',
        validator: AppInputValidators.required('Location'),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.words,
        autoCorrect: false,
        onTap: () async {
          _address = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GoogleAddressLookup()),
          );
          _locationController.text = _address.formattedAddress;
          context.read<PersonalInfoCubit>().chooseAddress(_address);
        },
        // onChanged:_address;
      );
  }
}
