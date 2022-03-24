import 'package:flutter/material.dart';

class Teste1 extends StatelessWidget {
  const Teste1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Produtos"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "segunda",
            );
          },
        ),
      ),
    );
  }
}
