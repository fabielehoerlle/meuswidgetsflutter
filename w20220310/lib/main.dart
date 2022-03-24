import 'package:flutter/material.dart';
import 'package:w20220310/Pagina1.dart';
import 'package:w20220310/Pagina2.dart';

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
          backgroundColor: Colors.blue,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Pagina1(),
        "/segunda": (context) => Pagina2(),
      },
    );
  }
}
