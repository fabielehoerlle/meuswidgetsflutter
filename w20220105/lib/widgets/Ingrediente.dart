import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ingrediente extends StatelessWidget {
  const Ingrediente({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 5,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: Colors.black,
          ),
          height: 6,
          width: 6,
        ),
        const SizedBox(
          width: 6,
        ),
        Container(
          width: 215,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
