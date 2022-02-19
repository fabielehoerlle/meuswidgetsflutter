import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SegurodeVida extends StatelessWidget {
  const SegurodeVida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.favorite_outline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Seguro de vida",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_outlined),
              ),
            ],
          ),
          const Text(
            "Conheça Nubank Vida: um seguro",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "simples e que cabe no bolso.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
