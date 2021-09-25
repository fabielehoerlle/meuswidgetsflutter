import 'dart:html';

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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2017/05/06/20/11/flower-2290773_1280.png",
              ),
              alignment: Alignment.topRight,
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.orangeAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Fabiele",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Hoerlle",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.redAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/b/ba/Malva_sylvestris_%28Mallow_stylized_flowers%29.png",
              ),
              alignment: Alignment.topLeft,
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Flowers",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "26/06/2021",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.purpleAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2015/08/17/13/17/sunflower-892465_1280.png",
              ),
              alignment: Alignment.topRight,
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
