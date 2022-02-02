import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

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

        child: const Text(
          "data", 
          style: TextStyle(
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
    child: const Align(
      alignment: Alignment.center,
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec orci felis, sagittis vitae nisl sed, interdum luctus nibh. Nullam ac dolor vitae risus pretium rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam vel est ante. Ut eu nisi rutrum, tempus velit vitae, iaculis tellus. Phasellus eget ligula sed elit eleifend gravida a quis ex. Duis vitae nisl ac ex euismod consectetur. Nullam vitae sem vel neque accumsan vestibulum.",
        style: TextStyle(fontWeight: FontWeight.w300),
        ),
    )
  );
    

    return Column(
      children: [
        titleStars,
        descriptionText
      ],
    );
  }
}