import 'package:artb2b/app/resources/styles.dart';
import 'package:flutter/material.dart';
export 'package:flutter/services.dart' show SystemUiOverlayStyle;

class AppTheme {
  const AppTheme._();

  static const primaryColor = fideuramGreen001;
  static const accentColor = fideuramGreen002;
  static const backgroundColor = fideuramGrey001;
  static const fideuramGreen001 = Color(0xFF00243C);
  static const fideuramGreen002 = Color(0xFF00243C);
  static const fideuramBlack001 = Color(0xFF000000);
  static const fideuramDarkGrey001 = Color(0xFF373737);
  static const fideuramWhite001 = Color(0xFFFFFFFF);
  static const fideuramGrey001 = Color(0xFF2B3237);
  static const fideuramLightGrey001 = Color(0xFFD8D8D8);
  static const fideuramLightGrey002 = Color(0xFF666666);
  static const fideuramLightGrey003 = Color(0xFF979797);


  static const primaryColorArtist = fideuramGreenArtist001;
  static const fideuramGreenArtist001 = Color(0xB2E3BDFF);
  static const accentColorArtist = Color(0x95C8ECFF);
  static const backgroundColorArtist = Color(0x95C8ECFF);
  static const fideuramGreyArtist001 = Color(0x95C8ECFF);

  static const primaryColorGallery = fideuramGreenGallery001;
  static const fideuramGreenGallery001 = Color(0xEABC67B2);
  static const accentColorGallery = Color(0xEABC67B2);
  static const backgroundColorGallery = Color(0xEABC67B2);
  static const fideuramGreyGalleryt001 = Color(0x6BDE8295);


  static ThemeData get theme {
    return ThemeData(
        primaryColor: primaryColor,
        canvasColor: Colors.white,
        backgroundColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        splashColor: accentColor.withOpacity(0.2),
        highlightColor: accentColor.withOpacity(0.2),
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        unselectedWidgetColor: fideuramDarkGrey001
    );
  }

  static ThemeData get themeArtist {
    return ThemeData(
        primaryColor: primaryColorArtist,
        canvasColor: Colors.white,
        backgroundColor: backgroundColorArtist,
        scaffoldBackgroundColor: backgroundColorArtist,
        splashColor: accentColor.withOpacity(0.2),
        highlightColor: accentColor.withOpacity(0.2),
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        unselectedWidgetColor: fideuramGreyArtist001
    );
  }

  static ThemeData get themeGallery {
    return ThemeData(
        primaryColor: primaryColorGallery,
        canvasColor: Colors.white,
        backgroundColor: backgroundColorGallery,
        scaffoldBackgroundColor: backgroundColorGallery,
        splashColor: accentColor.withOpacity(0.2),
        highlightColor: accentColor.withOpacity(0.2),
        appBarTheme: _appBarTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        unselectedWidgetColor: fideuramGreyGalleryt001
    );
  }

  static const _appBarTheme = AppBarTheme(color: fideuramGreyArtist001);


  static final stylePrimaryGreenButton = ElevatedButton.styleFrom(
      primary: AppTheme.fideuramGreen001,
      onPrimary: AppTheme.fideuramWhite001);

  static final stylePrimaryGreyButton = ElevatedButton.styleFrom(
    primary: AppTheme.fideuramGrey001,
    onPrimary: AppTheme.fideuramWhite001,
  );

  static final smallElevatedGreenButtonTheme =
  ElevatedButton.styleFrom(
    primary: AppTheme.fideuramGreen001,
    onPrimary: AppTheme.fideuramWhite001,
    minimumSize: const Size(107, 32),
    maximumSize: const Size(107, 32),
  );

  static final smallElevatedGreyButtonTheme =
  ElevatedButton.styleFrom(
    primary: AppTheme.fideuramGrey001,
    onPrimary: AppTheme.fideuramWhite001,
    minimumSize: const Size(107, 32),
    maximumSize: const Size(107, 32),

  );



  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: AppTheme.fideuramWhite001,
      onPrimary: AppTheme.fideuramGreen001,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: const Size(200.0, 48.0),
      shape: _buttonCornerRadius,
      textStyle: TextStyles.regularWhite16,
      padding: EdgeInsets.all(16.0),
      elevation: 1.0,
      shadowColor: AppTheme.fideuramGrey001,
    ),
  );

  static const _buttonCornerRadius = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6.0)),
  );



}
