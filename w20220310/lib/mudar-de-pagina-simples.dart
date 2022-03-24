import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/**
 * Esse arquivo é um exemplo de navegação simples
 * Criado para estudo, mas não devo usar esse metódo 
 * NUNCA. Só preciso saber que existe.
 * 
 * Essa não é a melhor forma de fazer navegação
 * 
 * Veja um exemplo melhor no main.dart
 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      home: Simples1(),
    );
  }
}

class Simples1 extends StatelessWidget {
  const Simples1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fabiele"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Fabi ama o Gio"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Simples2(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Simples2 extends StatelessWidget {
  const Simples2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fabiele2"),
      ),
      body: const Text("Fabi ama o Gio"),
    );
  }
}
