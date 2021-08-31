import 'package:flutter/material.dart';

class UserGoalsRow extends StatefulWidget {
  const UserGoalsRow({Key? key}) : super(key: key);

  @override
  _UserGoalsRowState createState() => _UserGoalsRowState();
}

class _UserGoalsRowState extends State<UserGoalsRow> {
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
            "My Goals",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
