import 'package:flores/pages/AniversarioPage.dart';
import 'package:flores/pages/BebePage.dart';
import 'package:flores/pages/BoxCollectionPage.dart';
import 'package:flores/pages/HomePage.dart';
import 'package:flores/pages/ProdutoPage.dart';
import 'package:flores/pages/RomanticoPage.dart';
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
      title: 'Cantinho das Flores',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ProdutoPage(),
    );
  }
}
