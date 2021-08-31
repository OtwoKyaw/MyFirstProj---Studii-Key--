import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:studii_key/tracker.dart/badges_info.dart';
import 'package:studii_key/tracker.dart/badges_row.dart';

class Badges extends StatefulWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  _BadgesState createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 40),
                child: BadgesRow(),
              ),
              Flexible(child: BadgesInfo())
            ])),
      ),
    );
  }
}
