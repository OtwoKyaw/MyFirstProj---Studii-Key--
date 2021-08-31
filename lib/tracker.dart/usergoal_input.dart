import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class UserGoalsInput extends StatefulWidget {
  const UserGoalsInput({Key? key}) : super(key: key);

  @override
  _UserGoalsInputState createState() => _UserGoalsInputState();
}

class _UserGoalsInputState extends State<UserGoalsInput> {
  TextEditingController myGoals = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
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
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: TextField(
          maxLines: 50,
          style: TextStyle(color: Colors.black, fontSize: 24),
          controller: myGoals,
          decoration: InputDecoration.collapsed(
              hintText: "Write down your goals ",
              hintStyle: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
