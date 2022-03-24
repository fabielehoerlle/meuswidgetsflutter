import 'package:flutter/material.dart';

class Teste2 extends StatelessWidget {
  const Teste2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste2"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Voltar"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "primeira",
            );
          },
        ),
      ),
    );
  }
}
