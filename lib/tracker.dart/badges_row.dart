import 'package:flutter/material.dart';

class BadgesRow extends StatefulWidget {
  const BadgesRow({Key? key}) : super(key: key);

  @override
  _BadgesRowState createState() => _BadgesRowState();
}

class _BadgesRowState extends State<BadgesRow> {
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
            "Badges",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
