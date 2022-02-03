import 'package:flutter/material.dart';
import 'description_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam laoreet metus justo, non mollis dolor commodo in. Aliquam aliquam tellus in magna eleifend dictum. Quisque vitae nulla fermentum tellus ultricies cursus eget et magna. Suspendisse efficitur, dolor a consequat bibendum, velit metus luctus ante, ut rhoncus est mauris vel tortor. Sed placerat lectus mauris, ac vestibulum eros condimentum ac. Nullam ligula odio, vulputate eget felis et, egestas vestibulum lacus. Nunc consectetur lectus urna, eget sagittis nibh posuere eget. Duis sem leo, fringilla et nunc quis, pellentesque lobortis nisi. Etiam tempus suscipit nulla quis malesuada. Vestibulum tellus velit, commodo vitae dui quis, laoreet suscipit dui. Nunc vel ultrices ex. Ut vel massa nulla. Aliquam ante tellus, blandit ut eros quis, iaculis sollicitudin neque. Ut diam odio, lobortis id ultrices eu, ultricies sit amet sapien. In lacinia accumsan nibh, et commodo lacus faucibus at.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Lato'
      ),
      home: Scaffold(appBar: AppBar(
        title: const Text("Testing Flutter"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DescriptionPlace("Duwili San", 4, description),
        )
      )
    );
  }
}