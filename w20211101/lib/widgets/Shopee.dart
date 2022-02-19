import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Shopee extends StatelessWidget {
  final String image;
  final String text;
  final String label;

  const Shopee({
    Key? key,
    this.image = "assets/moeda.png",
    this.text = "---",
    this.label = "---",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          padding: const EdgeInsets.all(3),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey, width: 1),
          ),
          child: Image.asset(image),
        ),
        const SizedBox(height: 10),
        Text(text),
        Text(label),
      ],
    );
  }
}
