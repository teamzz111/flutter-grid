import 'package:flutter/material.dart';
import 'package:grid/card_list.dart';
import 'gradient_background.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBackground(),
        CardList(),
      ],
    );
  }
}