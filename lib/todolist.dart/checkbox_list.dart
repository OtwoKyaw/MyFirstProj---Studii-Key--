import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studii_key/todolist.dart/mylist.dart';

class CheckBoxList extends StatefulWidget {
  const CheckBoxList({Key? key}) : super(key: key);

  @override
  _CheckBoxListState createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  TextEditingController mylist = new TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCheckBox(
          checkedFillColor: Color(0xff56B2BA),
          value: shouldCheck,
          onChanged: (val) {
            setState(() {
              shouldCheck = val;
              if (shouldCheck == true) {
                mylist.addListener(() {
                  TextDecoration.lineThrough;
                });
              }
            });
          }),
      title: TextField(
        style: TextStyle(color: Colors.black, fontSize: 26),
        controller: mylist,
        decoration: InputDecoration.collapsed(
            hintText: "list your tasks", hintStyle: TextStyle(fontSize: 20)),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.alarm,
          color: Colors.black,
        ),
      ),
    );
  }
}
