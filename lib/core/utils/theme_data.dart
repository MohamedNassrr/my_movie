import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movie/constance.dart';
import 'package:skeletonizer/skeletonizer.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.amber,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: mainBackground,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: mainBackground,
    selectedItemColor: Colors.amber,
    unselectedItemColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  extensions: const [
    SkeletonizerConfigData.dark(),
  ],
);
