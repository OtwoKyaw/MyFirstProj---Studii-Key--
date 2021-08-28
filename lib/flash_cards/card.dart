import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CreateCard extends StatefulWidget {
  const CreateCard({Key? key}) : super(key: key);

  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
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
      child: Text("hi"),
    );
  }
}
