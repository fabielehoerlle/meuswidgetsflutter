import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Receita extends StatelessWidget {
  const Receita({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5),
          padding: const EdgeInsets.all(5),
          height: 65,
          width: 65,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Image.asset(
            image,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
