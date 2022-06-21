import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
    backgroundColor: Colors.black,
    primaryColor: Colors.white,
    buttonColor: Color(0xFF373737), //back page Cupertino
    cardColor: Color(0xFF262626), // front page Cupertino
    hintColor: Color(0xFF9F9F9F),
    canvasColor: Color(0xFF919191),
    accentColor: Color(0xFF232323),
    fontFamily: "Lato",

  );
  static final lighthTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
    backgroundColor: Colors.white,
    primaryColor: Colors.black,
    buttonColor: Color(0xFFE6E6E6), //back page Cupertino
    cardColor: Color(0xFFFFFFFF), // front page Cupertino
    hintColor: Color(0xFF787878),
    canvasColor: Color(0xFF5E5E5E),
    accentColor: Colors.white,
    fontFamily: "Lato",
      platform: TargetPlatform.iOS
  );
}
