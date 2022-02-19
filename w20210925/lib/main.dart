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
          title: Text('Fabiele'),
        ),
        body: Center(
          child: Row(
            children: [
              Banner(),
              Banner(),
              Banner(),
              Banner(),
            ],
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  String text;

  Banner({
    Key? key,
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(100),
            color: Color(0xffEBEFEF),
          ),
          height: 80,
          width: 80,
          child: Icon(
            Icons.facebook,
            size: 30,
          ),
        ),
        SizedBox(height: 8),
        Text(
          this.text,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
