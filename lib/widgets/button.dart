import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 0,
        bottom: 20
      ),
      child: InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Hola"))
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 0.0,
          left: 20,
          right: 20
        ),
        height: 50,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1)
            ],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 0.6)
          )
        ),

        child: const Center(
          child: Text("Ver más",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    )
  );

  }
}