import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:studii_key/flash_cards/flip_card.dart';

class CreateFlashCard extends StatefulWidget {
  const CreateFlashCard({Key? key}) : super(key: key);

  @override
  _CreateFlashCardState createState() => _CreateFlashCardState();
}

class _CreateFlashCardState extends State<CreateFlashCard> {
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
        //flipcard
        Flipcard(),
        //buttons&flip
        Positioned(
          top: 160,
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    tooltip: "Previous Card",
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_outlined)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    tooltip: "Flip",
                    onPressed: () {},
                    icon: Icon(
                      Icons.flip_outlined,
                      semanticLabel: "Flip",
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    tooltip: "Next Card",
                    onPressed: () {
                      Flipcard();
                    },
                    icon: Icon(Icons.arrow_forward_ios_outlined)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
