import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:studii_key/tracker.dart/badges_types.dart';
import 'package:studii_key/tracker.dart/my_badges.dart';

class BadgesInfo extends StatefulWidget {
  const BadgesInfo({Key? key}) : super(key: key);

  @override
  _BadgesInfoState createState() => _BadgesInfoState();
}

class _BadgesInfoState extends State<BadgesInfo> {
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        borderRadius: 40,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFffffff).withOpacity(0.2),
            Color(0xFFFFFFFF).withOpacity(0.1),
          ],
        ),
        border: 1,
        blur: 1,
        borderGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFffffff),
            Color(0xFFFFFFFF),
          ],
        ),
        child: Column(
          children: [
            // my badges
            MyBadges(),
            // badges types
            BadgesTypes()
          ],
        ));
  }
}
