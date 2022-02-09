import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  bool _isFavorite = false;

  void onPressed() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: (_isFavorite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border)),
      onPressed: onPressed,
    );
  }
}