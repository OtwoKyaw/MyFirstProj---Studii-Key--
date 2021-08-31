import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:studii_key/tracker.dart/award.dart';

class BadgesTypes extends StatelessWidget {
  const BadgesTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.25,
              borderRadius: 20,
              shape: BoxShape.rectangle,
              linearGradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color(0xFFFFFFFF).withOpacity(0.5),
                  ]),
              border: 1,
              blur: 20,
              borderGradient: LinearGradient(colors: [
                Color(0xFFffffff),
                Color(0xFFFFFFFF),
              ]),
              child: null);
        });
  }
}
