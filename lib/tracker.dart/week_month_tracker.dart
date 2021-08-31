import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class WeekMonthTracker extends StatefulWidget {
  const WeekMonthTracker({Key? key}) : super(key: key);

  @override
  _WeekMonthTrackerState createState() => _WeekMonthTrackerState();
}

class _WeekMonthTrackerState extends State<WeekMonthTracker> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 60, bottom: 30),
        child: Center(
          child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.7,
              borderRadius: 30,
              shape: BoxShape.rectangle,
              linearGradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.4),
                    Color(0xFFFFFFFF).withOpacity(0.4),
                  ]),
              border: 1,
              blur: 20,
              borderGradient: LinearGradient(colors: [
                Color(0xFFffffff),
                Color(0xFFFFFFFF),
              ]),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.348,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color(0xFFffffff).withOpacity(0.7),
                        child: Center(
                            child: Text(
                          "Week",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.348,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Color(0xFFffffff).withOpacity(0.7),
                        child: Center(
                            child: Text(
                          "Month",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ))
                ],
              )),
        ));
  }
}
