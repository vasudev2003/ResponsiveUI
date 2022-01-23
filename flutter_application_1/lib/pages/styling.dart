import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBaBackgroundColor = Color(0xFFFFD974);
  static const Color selectedBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );
  static final TextTheme lightTextTheme = TextTheme(
    subtitle1: _titleLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
  );
  static final TextTheme darkTextTheme = TextTheme(
    subtitle1: _titleDark,
    subtitle2: _subTitleDark,
    button: _buttonDark,
  );
  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 28,
  );
  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 18,
    height: 1.5,
  );
  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 22,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);
  static final TextStyle _subTitleDark =
      _subTitleLight.copyWith(color: Colors.white70);
  static final TextStyle _buttonDark =
      _buttonLight.copyWith(color: Colors.white);
}
