import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class UserGoalsBadges extends StatefulWidget {
  const UserGoalsBadges({Key? key}) : super(key: key);

  @override
  _UserGoalsBadgesState createState() => _UserGoalsBadgesState();
}

class _UserGoalsBadgesState extends State<UserGoalsBadges> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.2,
              borderRadius: 30,
              shape: BoxShape.rectangle,
              linearGradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFBFAF5).withOpacity(0.8),
                    Color(0xFFFBFAF5).withOpacity(0.8),
                  ]),
              border: 1,
              blur: 2,
              borderGradient: LinearGradient(colors: [
                Color(0xFFffffff),
                Color(0xFFFFFFFF),
              ]),
              child: Center(
                  child: Text(
                "My Goals",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ))),
          GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.2,
              borderRadius: 30,
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
              child: Center(
                  child: Text(
                "Badges",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )))
        ],
      ),
    );
  }
}
