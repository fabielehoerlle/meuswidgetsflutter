import 'package:flutter/material.dart';

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
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              FraseMotivacional(),
              FraseMotivacional(
                texto1: "Eu gosto de estudar",
                texto2: "programação",
              ),
              FraseMotivacional(),
            ],
          ),
        ),
      ),
    );
  }
}

class FraseMotivacional extends StatelessWidget {
  String texto1;
  String texto2;

  FraseMotivacional({
    Key? key,
    this.texto1 = "Seja sua",
    this.texto2 = "própria inspiração",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: 150,
      child: Stack(
        children: [
          Image.asset(
            "assets/background.jpg",
            width: double.maxFinite,
            height: 150,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/overlay.png",
            width: double.maxFinite,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.texto1,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  this.texto2,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
