import 'package:flutter/material.dart';
import 'package:flutter_chatbot/core/theme/colors.dart';

final lightTheme = ThemeData(
  primaryColor: primaryLightColor,
  scaffoldBackgroundColor: backgroundLightColor,
  textTheme: const TextTheme(
    subtitle1: TextStyle(),
    subtitle2: TextStyle(),
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
    headline1: TextStyle(),
    headline2: TextStyle(),
    headline3: TextStyle(),
    headline4: TextStyle(),
    headline5: TextStyle(),
    headline6: TextStyle(),
    overline: TextStyle(),
    caption: TextStyle(),
    button: TextStyle(),
  ).apply(
    bodyColor: primaryLightColor,
    fontFamily: 'Lato',
  ),
  colorScheme: ColorScheme.dark(
    primary: primaryLightColor,
    secondary: secondaryLightColor,
    background: backgroundLightColor,
    onBackground: onBackgroundLightColor,
  ),
  appBarTheme: AppBarTheme(
    color: appBarBackgroundLightColor,
    brightness: Brightness.light, // status bar brightness
  ),
);
