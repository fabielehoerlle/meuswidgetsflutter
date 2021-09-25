import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Qualquer um'),
        ),
        body: Center(
          child: Banner(),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.pink,
            ),
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 5,
              left: 115,
              right: 15,
            ),
            margin: EdgeInsets.only(
              top: 25,
              left: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ATÉ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "50% OFF",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/arrow.png",
                  color: Colors.white,
                  width: 48,
                  height: 48,
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              "assets/blush.png",
              height: 125,
              width: 125,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
