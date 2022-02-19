import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Compra extends StatelessWidget {
  const Compra({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color(0xffFCDAD4),
      ),
      child: const Text(
        "Comprar",
        style: TextStyle(
          fontSize: 22,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
