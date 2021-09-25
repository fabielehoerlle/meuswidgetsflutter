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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Banner(text: "Blusas", image: "assets/blusa.png"),
                  Banner(text: "Calças", image: "assets/calça.png"),
                  Banner(text: "Vestidos", image: "assets/vestir.png"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Banner(text: "Beleza", image: "assets/make-up.png"),
                  Banner(text: "Calçados", image: "assets/salto.png"),
                  Banner(text: "Moda praia", image: "assets/bikini.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Banner extends StatelessWidget {
  String text;
  String image;

  Banner({
    Key? key,
    this.text = 'xxxx',
    this.image = "assets/user.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      //height: 115,
      width: 115,
      color: Color(0xffdddddd),
      child: Column(
        children: [
          Image.asset(
            this.image,
            height: 53,
            width: 53,
          ),
          SizedBox(height: 10),
          Text(
            this.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
