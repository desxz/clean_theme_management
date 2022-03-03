import 'package:flutter/material.dart';

import '../application/theme_application.dart';

class ThemeLight extends ApplicationTheme {
  static ThemeLight? _instance;
  static ThemeLight get instance {
    _instance ??= ThemeLight._init();
    return _instance!;
  }

  ThemeLight._init();

  @override
  ThemeData? get theme => ThemeData(
        primarySwatch: const MaterialColor(4288120051, {
          50: Color(0xffebe8fd),
          100: Color(0xffd8d1fa),
          200: Color(0xffb0a2f6),
          300: Color(0xff8974f1),
          400: Color(0xff6245ed),
          500: Color(0xff3b17e8),
          600: Color(0xff2f12ba),
          700: Color(0xff230e8b),
          800: Color(0xff17095d),
          900: Color(0xff0c052e)
        }),
        brightness: Brightness.light,
        primaryColor: const Color(0xff9784f3),
        primaryColorLight: const Color(0xffd8d1fa),
        primaryColorDark: const Color(0xff230e8b),
        canvasColor: const Color(0xfffafafa),
        scaffoldBackgroundColor: const Color(0xfffafafa),
        bottomAppBarColor: const Color(0xffffffff),
        cardColor: const Color(0xffffffff),
        dividerColor: const Color(0x1f000000),
        highlightColor: const Color(0x66bcbcbc),
        splashColor: const Color(0x66c8c8c8),
        selectedRowColor: const Color(0xfff5f5f5),
        unselectedWidgetColor: const Color(0x8a000000),
        disabledColor: const Color(0x61000000),
        toggleableActiveColor: const Color(0xff2f12ba),
        secondaryHeaderColor: const Color(0xffebe8fd),
        backgroundColor: const Color(0xffb0a2f6),
        dialogBackgroundColor: const Color(0xffffffff),
        indicatorColor: const Color(0xff3b17e8),
        hintColor: const Color(0x8a000000),
        errorColor: const Color(0xffd32f2f),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.normal,
          minWidth: 88,
          height: 36,
          padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff000000),
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0x8a000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headline2: TextStyle(
            color: Color(0x8a000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headline3: TextStyle(
            color: Color(0x8a000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headline4: TextStyle(
            color: Color(0x8a000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headline5: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          headline6: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          subtitle1: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyText1: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          bodyText2: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          caption: TextStyle(
            color: Color(0x8a000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          button: TextStyle(
            color: Color(0xdd000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          subtitle2: TextStyle(
            color: Color(0xff000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          overline: TextStyle(
            color: Color(0xff000000),
            fontSize: null,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      );
}
