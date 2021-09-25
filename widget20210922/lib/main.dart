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
          color: Colors.black,
          //height: 400,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "maquiagens",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/make1.png",
                    height: 35,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset(
                "assets/sale1.png",
                height: 130,
              ),
              SizedBox(height: 40),
              Image.asset(
                "assets/pencil.png",
                height: 200,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
