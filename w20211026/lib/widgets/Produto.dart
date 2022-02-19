import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20211026/widgets/Compra.dart';

class Produto extends StatelessWidget {
  final String percentageDiscount;
  final String image;
  final String name1;
  final String name2;
  final String name3;
  final String company;
  final String quantity;
  final String originalValue;
  final String discountValue;
  const Produto({
    Key? key,
    required this.percentageDiscount,
    required this.image,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.company,
    required this.quantity,
    required this.originalValue,
    required this.discountValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      margin: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      height: 430,
      width: 150,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
              color: Colors.red,
            ),
            height: 23,
            width: 55,
            child: Text(
              percentageDiscount,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  width: 85,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                name1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                name2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                name3,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star_outlined,
                      size: 16, color: Colors.yellow),
                  const SizedBox(width: 5),
                  const Icon(Icons.star_outlined,
                      size: 16, color: Colors.yellow),
                  const SizedBox(width: 5),
                  const Icon(Icons.star_outlined,
                      size: 16, color: Colors.yellow),
                  const SizedBox(width: 5),
                  const Icon(Icons.star_outlined,
                      size: 16, color: Colors.yellow),
                  const SizedBox(width: 5),
                  const Icon(Icons.star_outlined,
                      size: 16, color: Colors.yellow),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                company,
                style: const TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 5),
              Text(
                quantity,
                style: const TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 10),
              Text(
                originalValue,
                style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                discountValue,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Compra(),
            ],
          ),
        ],
      ),
    );
  }
}
