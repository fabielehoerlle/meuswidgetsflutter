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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 50,
          ),
          color: Colors.yellow,
          //height: 400,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "dia das crianças",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/logo.png",
                    height: 30,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Image.asset(
                "assets/off.png",
                width: 300,
              ),
              SizedBox(height: 15),
              Text(
                "entre na brincadeira",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: "e leve "),
                    TextSpan(
                      text: "peças grátis",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
