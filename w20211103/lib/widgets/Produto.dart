import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Produto extends StatelessWidget {
  final String image;
  final String name1;
  final String originalValue;
  final String discountValue;
  final String discountPercentage;
  final String text;
  const Produto({
    Key? key,
    this.image = "assets/blush.png",
    this.name1 = "---",
    this.originalValue = "---",
    this.discountValue = "---",
    this.discountPercentage = "---",
    this.text = "---",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      //height: 312,
      width: 150,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image, width: 100),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: 20,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Color(0xffD0E6F5),
            ),
            child: const Text(
              "5% de desconto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff0C588A),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name1,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 10),
          Text(
            originalValue,
            style: const TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 16,
            ),
          ),
          Text(
            discountValue,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: 20,
            width: 75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Color(0xffFCDDD7),
            ),
            child: Text(
              discountPercentage,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "no cartão C&A s/ juros",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
