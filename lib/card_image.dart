import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  CardImage(this.pathImage, {Key? key}) : super(key: key);

  String pathImage = "assets/mountain.jpeg";

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}