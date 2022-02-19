import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Estrela extends StatelessWidget {
  const Estrela({
    Key? key,
    required this.text2,
  }) : super(key: key);

  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFADB73),
          size: 22,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFADB73),
          size: 22,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFADB73),
          size: 22,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFADB73),
          size: 22,
        ),
        Icon(
          Icons.star,
          color: Color(0xffFADB73),
          size: 22,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Color(0xffFADB73),
          ),
        ),
      ],
    );
  }
}
