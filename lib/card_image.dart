import 'package:flutter/material.dart';
import 'package:grid/floating_button.dart';

class CardImage extends StatelessWidget {
  CardImage(this.pathImage, {Key? key}) : super(key: key);

  String pathImage = "assets/mountain.jpeg";

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        alignment: const Alignment(0.9, 1.14),
        children: [
        Container(
          height: 240,
          width: 260,
          margin: const EdgeInsets.only(
            top: 90, 
            left: 20
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle,
            boxShadow: const <BoxShadow>[
              BoxShadow(color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
            ]
          ),
        ),

        const FloatingButton()
      ]);
  }
}