import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'checkbox_list.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  TextEditingController mylist = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GlassmorphicContainer(
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
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: CheckBoxList())
      ],
    );
  }
}
