import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studii_key/tracker.dart/badges.dart';
import 'package:studii_key/tracker.dart/usergoals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.gaeguTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: Badges(),
    );
  }
}
