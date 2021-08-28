import 'package:flutter/material.dart';

class NameRow extends StatelessWidget {
  const NameRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Card Name",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
        ),
      ),
    );
  }
}
