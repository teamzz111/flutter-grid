import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final String description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam laoreet metus justo, non mollis dolor commodo in. Aliquam aliquam tellus in magna eleifend dictum. Quisque vitae nulla fermentum tellus ultricies cursus eget et magna. Suspendisse efficitur, dolor a consequat bibendum, velit metus luctus ante, ut rhoncus est mauris vel tortor. Sed placerat lectus mauris, ac vestibulum eros condimentum ac. Nullam ligula odio, vulputate eget felis et, egestas vestibulum lacus. Nunc consectetur lectus urna, eget sagittis nibh posuere eget. Duis sem leo, fringilla et nunc quis, pellentesque lobortis nisi. Etiam tempus suscipit nulla quis malesuada. Vestibulum tellus velit, commodo vitae dui quis";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, description)
          ],
        ),
        const HeaderAppBar()
      ])
    );
  }
}