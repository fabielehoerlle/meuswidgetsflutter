import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:w20211019/pages/HomePage.dart';

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
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: ''),
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
        title: const Text(""),
        bottom: PreferredSize(
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            alignment: Alignment.topLeft,
            color: Colors.purple,
            constraints: const BoxConstraints.expand(height: 60),
            child: const Text(
              "Olá, Fabiele",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          preferredSize: const Size(60, 60),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help_outline_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_outlined),
          ),
        ],
      ),
      body: HomePage(),
    );
  }
}
