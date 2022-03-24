import 'package:flutter/material.dart';
import 'package:teste/Teste1.dart';
import 'package:teste/Teste2.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: "primeira",
      routes: {
        "primeira": (context) => Teste1(),
        "segunda": (context) => Teste2(),
      },
    );
  }
}
