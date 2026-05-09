import 'package:flutter/material.dart';

class CustomTheme {
  static const Color grey = Color(0xFFDFDFDF);
  static const Color yellow = Color(0xFFFFDB47);
  static const cardShadow = [
    BoxShadow(color: grey, blurRadius: 6, spreadRadius: 4, offset: Offset(0, 2)),
  ];

  static const buttonShadow = [
    BoxShadow(color: grey, blurRadius: 3, spreadRadius: 4, offset: Offset(1, 3)),
  ];

  static getCardDecoration(){
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(35),
      boxShadow: cardShadow,
    );
  }

  static ThemeData getTheme() {
    // Defining these as local constants prevents null-safety errors
    const double sizeSm = 14.0;
    const double sizeMd = 18.0;
    const double sizeLg = 24.0;

    return ThemeData(
      primaryColor: yellow,
      fontFamily: "DMSans",

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: "DMSans",
          fontSize: sizeLg,
          fontWeight: FontWeight.bold,
          letterSpacing: 4,
        ),
      ),

      // Fixed TabBarTheme
      tabBarTheme: const TabBarThemeData(
        labelColor: yellow, // Reference directly, keep it const
        unselectedLabelColor: Colors.black,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            color: Colors.black, fontSize: sizeLg, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.black, fontSize: sizeMd, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.black, fontSize: sizeSm, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(
            color: Colors.black, fontSize: sizeSm, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
            color: Colors.black,
            letterSpacing: 1,
            fontSize: sizeSm,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}