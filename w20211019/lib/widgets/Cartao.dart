import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cartao extends StatelessWidget {
  const Cartao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(left: 20, right: 20),
      height: 50,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Color(0xffD8D6D7),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.credit_card_outlined,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            "Meus cartões",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
