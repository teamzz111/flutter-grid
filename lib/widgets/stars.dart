import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  Stars(this.rating, {Key? key}) : super(key: key);

  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    Row starsContainer = Row(children: []);

    for(int i = 0; i < rating.floor(); i++) {
      starsContainer.children.add(const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 18,
      ));
    }

    double fraction = rating - rating.truncate();

    if(fraction > 0.01) {
      starsContainer.children.add(const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 18,
      ));
    }

    int result = starsContainer.children.length;

    if(result < 5) {
      for(int i = 0; i < (result - 5).abs(); i++) {
        starsContainer.children.add(const Icon(
          Icons.star_outline,
          color: Color(0xFFf2C611),
          size: 18,
        ));
      }
    }

    return starsContainer;
  }
}