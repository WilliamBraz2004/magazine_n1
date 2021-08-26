import 'package:flutter/material.dart';
import 'package:magazine_n1/screens/home/home.dart';

void main() {
  runApp(MaterialApp(
    title: "Magazine Luiza",
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: MaterialColor(0xFF0073B2, {
      50: Color(0xFFF3F8FC),
      100: Color(0xFFE6F1F8),
      200: Color(0xFFC0DCEC),
      300: Color(0xFF97C6E0),
      400: Color(0xFF4D9DCA),
      500: Color(0xFF0073B2),
      600: Color(0xFF00679F),
      700: Color(0xFF00456B),
      800: Color(0xFF003451),
      900: Color(0xFF002234),
    })),
  ));
}
