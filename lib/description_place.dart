import 'package:flutter/material.dart';
import 'package:grid/button.dart';
import 'package:grid/review.dart';
class DescriptionPlace extends StatelessWidget {
  DescriptionPlace(this.namePlace, this.stars, this.description, {Key? key}) : super(key: key);

  String namePlace;
  int stars;
  String description;

  @override
  Widget build(BuildContext context) {

  final star = Container(
    margin: const EdgeInsets.only(
      top: 302,
      right: 3.0
    ),

    child: const Icon(
      Icons.star,
      color: Color(0xFFf2C611),
    ),
  );


  final titleStars = Row(
    children: [
      Container(
        margin:  const EdgeInsets.only(
          top: 320, 
          left: 20,
          right: 20,
          bottom: 20
        ),

        child: Text(
          namePlace, 
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,  
        ),
      ),

      Row(
        children: [
          star,
          star,
          star,
          star,
          star
        ],
      ),
    ]
  );

  final descriptionText = Container(
    margin:  const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 20
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        description,
        style: const TextStyle(fontWeight: FontWeight.w300),
        ),
    )
  );
    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        descriptionText,
        const Button(),
        Review("assets/people.jpeg", "Andrés Largo", "1 review - quiere morir", "dicen que embeces socio"),
        Review("assets/people.jpeg", "Embeces Largo", "1 review - quiere morir", "dicen que embeces socio"),
      ],
    );
  }
}