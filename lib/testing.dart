import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Testing extends StatelessWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc2fcff),
      body: GlassmorphicContainer(
          width: 200,
          height: 750,
          borderRadius: 20,
          blur: 1,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff1ff26).withOpacity(0.1),
                Color(0xfffa9dde).withOpacity(0.05),
              ],
              stops: [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xfff1ff26).withOpacity(0.5),
              Color((0xfffa9dde)).withOpacity(0.5),
            ],
          ),
          child: null),
    );
  }
}
