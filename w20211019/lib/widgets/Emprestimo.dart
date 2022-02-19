import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({
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
          const Icon(Icons.request_page_outlined),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Empréstimo",
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
            "Valor disponível de até",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "R\$ 9.800,00",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
