import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina2"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Gio ama a Fabi"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/",
            );
          },
        ),
      ),
    );
  }
}
