import 'package:flutter/material.dart';
import 'package:grid/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Lato'
      ),
      home: Scaffold(
        bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ), 
        child: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Search"
            ),
          ],
        )
        ),
      )
    );
  }
}