import 'package:flutter/material.dart';
import 'package:layout1/VisualizarItem/VisualizarItem.dart';
import 'package:layout1/item/main.dart';
import 'package:layout1/loja/loja.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Loja(),
      ),
    );
  }
}
