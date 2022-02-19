import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Makes extends StatelessWidget {
  final String image;
  final String text;
  const Makes({
    Key? key,
    this.image = "assets/shadow.png",
    this.text = "---",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 15),
          padding: const EdgeInsets.all(5),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 1),
            ],
          ),
          child: Image.asset(
            image,
          ),
        ),
        //const SizedBox(height: 9),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
