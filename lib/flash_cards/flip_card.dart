import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/services.dart';

class Flipcard extends StatefulWidget {
  const Flipcard({Key? key}) : super(key: key);

  @override
  _FlipcardState createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  TextEditingController front = new TextEditingController();

  TextEditingController back = new TextEditingController();
  // GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: MediaQuery.of(context).size.width * 0.15,
      child: FlipCard(
          // key: cardKey,
          // flipOnTouch: false,
          direction: FlipDirection.VERTICAL,
          front: Card(
            color: Color(0xFFffffff).withOpacity(0.6),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.4,
              borderRadius: 40,
              linearGradient: LinearGradient(colors: [
                Color(0xFFffffff).withOpacity(0.2),
                Color(0xFFFFFFFF).withOpacity(0.1),
              ]),
              border: 1,
              blur: 20,
              borderGradient: LinearGradient(colors: [
                Color(0xFFffffff),
                Color(0xFFFFFFFF),
              ]),
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  child: TextField(
                    style: TextStyle(fontSize: 26),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration.collapsed(hintText: "Enter Your vocab"),
                    controller: front,
                  ),
                ),
              ),
            ),
          ),
          back: Card(
            color: Color(0xFFffffff).withOpacity(0.6),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.4,
              borderRadius: 40,
              linearGradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.2),
                    Color(0xFFFFFFFF).withOpacity(0.1),
                  ]),
              border: 1,
              blur: 20,
              borderGradient: LinearGradient(colors: [
                Color(0xFFffffff),
                Color(0xFFFFFFFF),
              ]),
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  child: TextField(
                    style: TextStyle(fontSize: 26),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter the Meaning"),
                    controller: back,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
