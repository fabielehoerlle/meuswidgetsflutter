import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
        ),
      ),
      home: const MyHomePage(title: "Época Cosméticos"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Estrelas(nota: 1),
            Estrelas(nota: 2),
            Estrelas(nota: 3),
            Estrelas(nota: 4),
            Estrelas(nota: 5),
          ],
        ),
      ),
    );
  }
}

class Estrelas extends StatelessWidget {
  final int nota;

  const Estrelas({
    Key? key,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> cores = [];
    for (int i = 0; i <= 4; i++) {
      if (i < nota) {
        cores.add(Colors.yellow);
      } else {
        cores.add(Colors.white);
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: cores[0],
        ),
        Icon(
          Icons.star,
          color: cores[1],
        ),
        Icon(
          Icons.star,
          color: cores[2],
        ),
        Icon(
          Icons.star,
          color: cores[3],
        ),
        Icon(
          Icons.star,
          color: cores[4],
        ),
        Text(
          nota.toString(),
        ),
      ],
    );
  }
}
