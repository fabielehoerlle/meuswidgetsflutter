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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            const snackbar = SnackBar(content: Text("Tap"));
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: SocialIcon(text: "Ir para página 2"),
        ),
      ),
    );
  }
}

// ==================================================

class SocialIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  const SocialIcon({
    Key? key,
    this.text = "xxxxx",
    this.icon = Icons.facebook_rounded,
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
            this.icon,
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
