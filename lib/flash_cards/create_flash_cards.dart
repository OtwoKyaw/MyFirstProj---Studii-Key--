import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'card.dart';
import 'flash_card_name_row.dart';

class NewFlashCards extends StatefulWidget {
  const NewFlashCards({Key? key}) : super(key: key);
  @override
  _NewFlashCardsState createState() => _NewFlashCardsState();
}

class _NewFlashCardsState extends State<NewFlashCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xffB9FBFF), Color(0xFCD1D1)],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GlassmorphicContainer(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          blur: 1,
          borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFffffff), Color(0xFFffffff)]),
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.2),
              Color(0xFFFFFFFF).withOpacity(0.2),
            ],
          ),
          borderRadius: 0,
          border: 0,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: NameRow()),
              Flexible(child: CreateFlashCard())
            ],
          ),
        ),
      ),
    );
  }
}
