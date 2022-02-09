import 'package:flutter/material.dart';
import 'package:grid/Place/ui/widgets/card_image.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/beach.jpeg"),
          CardImage("assets/mountain.jpeg"),
          CardImage("assets/mountain_stars.jpeg"),
          CardImage("assets/sunset.jpeg")
        ],
      ),
    );
  }
}