import 'package:flutter/material.dart';
import 'package:studii_key/flash_cards/create_flash_cards.dart';
//import 'package:studii_key/testing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewFlashCards(),
    );
  }
}
