import 'package:flutter/material.dart';
import 'package:studii_key/flash_cards/create_flash_cards.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:studii_key/testing.dart';

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
      home: NewFlashCards(),
    );
  }
}
