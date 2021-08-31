import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class MyBadges extends StatefulWidget {
  const MyBadges({Key? key}) : super(key: key);

  @override
  _MyBadgesState createState() => _MyBadgesState();
}

class _MyBadgesState extends State<MyBadges> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: GlassmorphicContainer(
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
              title: Text("You've earned",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold
                  )),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mobile_screen_share_outlined,
                  color: Colors.black,
                ),
              )),
        ),
      ),
    ));
  }
}
