import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:glassmorphism/glassmorphism.dart';

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
  void initState() {
    super.initState();
    mylist.addListener(() {
      if (shouldCheck == true) {
        TextDecoration.lineThrough;
      }
    });
  }

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
          child: ListTile(
            leading: CustomCheckBox(
                checkedFillColor: Color(0xff56B2BA),
                value: shouldCheck,
                onChanged: (val) {
                  setState(() {
                    shouldCheck = val;
                  });
                }),
            title: TextField(
              style: TextStyle(color: Colors.black, fontSize: 26),
              controller: mylist,
              decoration: InputDecoration.collapsed(
                  hintText: "list your tasks",
                  hintStyle: TextStyle(fontSize: 20)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.alarm,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
