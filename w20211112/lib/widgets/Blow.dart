import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20211112/widgets/Estrela.dart';

class Blow extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String value;
  final String total;
  final String label;
  const Blow({
    Key? key,
    this.image = "---",
    this.text1 = "---",
    this.text2 = "---",
    this.value = "---",
    this.total = "---",
    this.label = "---",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      //height: 400,
      width: 148,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 125,
            color: Colors.pink,
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            width: double.maxFinite,
            color: Colors.pink,
          ),
          const SizedBox(height: 10),
          Text(
            text1,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Estrela(text2: text2),
          const SizedBox(height: 10),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            total,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 120,
            color: Colors.pink,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
