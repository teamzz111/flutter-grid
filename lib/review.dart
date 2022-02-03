import 'package:flutter/material.dart';
import 'package:grid/stars.dart';

class Review extends StatelessWidget {
  
  Review(this.pathImage, this.name, this.details, this.comment, {Key? key}) : super(key: key);

  String pathImage = "assets/people.jpeg";
  String name = "Andrés Largo";
  String details = "1 review 5 photos";
  String comment = "HOla embeces tienen 0 estrellas iii";
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13,
          color: Color(0xFFa3a6a7),
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Row(children: [
        Text(
          details,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFFa3a6a7)
          ),
        ),
        Stars(4.5)
      ])
    );

    final userName  = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [        
        userName,
        userInfo,
        userComment
      ],
    );


    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover)
      ),
    );
    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }
}