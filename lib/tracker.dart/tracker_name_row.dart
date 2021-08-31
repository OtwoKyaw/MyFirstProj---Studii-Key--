import 'package:flutter/material.dart';

class TrackerNameRow extends StatefulWidget {
  const TrackerNameRow({Key? key}) : super(key: key);

  @override
  _TrackerNameRowState createState() => _TrackerNameRowState();
}

class _TrackerNameRowState extends State<TrackerNameRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Study Time Tracker",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
