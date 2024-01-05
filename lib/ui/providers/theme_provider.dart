import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

/*
проект небольшой, темы будут настраиваться отсюда
 */

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.withOpacity(0.1),
      useMaterial3: true,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.nunitoSans(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        bodySmall: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 15),
        labelSmall: GoogleFonts.nunitoSans(color: Colors.white54, fontSize: 13),
        titleSmall: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 12),
      ),
      // unselectedWidgetColor: Colors.white70,
      // primaryColorLight: Colors.black,
      // scaffoldBackgroundColor: Colors.grey.shade900,
      // primaryColor: Colors.greenAccent[700],
      // secondaryHeaderColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
      // textSelectionTheme: const TextSelectionThemeData(
      //   cursorColor: Colors.red,
      //   selectionColor: Colors.green,
      //   selectionHandleColor: Colors.blue,
      // )
      colorScheme: const ColorScheme.dark());

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xffb9d0f6ff),
      useMaterial3: true,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.nunitoSans(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        bodySmall: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 15),
        labelSmall: GoogleFonts.nunitoSans(color: Colors.black38, fontSize: 13),
        titleSmall: GoogleFonts.nunitoSans(color: Colors.black, fontSize: 12),
      ),
      // unselectedWidgetColor: Colors.black,
      // primaryColorLight: Colors.white,
      // scaffoldBackgroundColor: Colors.white,
      // primaryColor: Colors.greenAccent[700],
      // secondaryHeaderColor: Colors.black,
      // iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
      colorScheme: const ColorScheme.light());
}
