import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
    this.enabled = true,
  }) : super(key: key);
  final String image;
  final String name;
  final String value;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    double opacity = enabled ? 1 : 0.5;

    return Opacity(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        //height: 250,
        width: 200,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 200,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              //textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 1,
              width: 30,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xff7B7877),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
