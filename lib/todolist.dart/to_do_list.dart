import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'mylist.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
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
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_outlined)),
              ),
              Flexible(child: MyList())
            ],
          ),
        ),
      ),
    );
  }
}
