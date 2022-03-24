import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Pagina1"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
          ),
          child: const Text("Fabi ama o Gio"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/segunda",
            );
          },
        ),
      ),
    );
  }
}
