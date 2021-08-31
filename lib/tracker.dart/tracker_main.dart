import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:studii_key/tracker.dart/tracker_name_row.dart';
import 'package:studii_key/tracker.dart/usergoals_badges.dart';
import 'package:studii_key/tracker.dart/week_month_tracker.dart';

class TrackerHome extends StatefulWidget {
  const TrackerHome({Key? key}) : super(key: key);

  @override
  _TrackerHomeState createState() => _TrackerHomeState();
}

class _TrackerHomeState extends State<TrackerHome> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrackerNameRow(),
              Flexible(child: WeekMonthTracker()),
              Flexible(child: UserGoalsBadges())
            ],
          ),
        ),
      ),
    );
  }
}
