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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
        ),
      ),
      home: const MyHomePage(title: 'Fabiele'),
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
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 430,
              width: 220,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/1.png"),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1, color: Colors.pink),
                    ),
                    child: const Text(
                      "Lançamento",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Nivea",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "NIVEA Soft - Creme \nHidratante 97g",
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        "R\$ 43,90",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "R\$ 34,90",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 150,
                    child: const Text(
                        "Creme hidratante para corpo, mãos e rosto, " +
                            "ideal para todos os tipos de pele. Suaviza a textura da pele."),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                height: 22,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.yellow,
                ),
                child: const Text(
                  "- 20%",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
