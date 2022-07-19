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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
        ),
      ),
      home: const MyHomePage(title: 'Fabiele'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: const [
            Produtos(
                image: "assets/1.png",
                color: Colors.pink,
                producttype: "Lançamento",
                textcolor: Colors.pink,
                productbrand: "Nivea",
                productname: "NIVEA MEN Deep - \nShower Gel 250ml",
                originalvalue: "R\$ 39,90",
                discountedvalue: "R\$ 30,90",
                text: "Shower gel para todos " +
                    "os tipos de pele. Possui " +
                    "ação 3 em 1, higieniza o corpo, rosto e até o cabelo.",
                discountpercentage: "- 22%"),
            Produtos(
              image: "assets/2.png",
              color: Colors.green,
              producttype: "Vegano",
              textcolor: Colors.green,
              productbrand: "Quem Disse, \nBerenice?",
              productname:
                  "quem disse, berenice? \nGlow - Esfoliante \nCorporal 150g",
              originalvalue: "R\$ 37,90",
              discountedvalue: "R\$ 34,11",
              text: "Esfoliante corporal. Ajuda a remover as impurezas " +
                  "e células mortas para uma pele renovada e luminosa.",
              discountpercentage: "- 10%",
            ),
          ],
        ),
      ),
    );
  }
}

class Produtos extends StatelessWidget {
  const Produtos({
    required this.image,
    required this.color,
    required this.producttype,
    required this.textcolor,
    required this.productbrand,
    required this.productname,
    required this.originalvalue,
    required this.discountedvalue,
    required this.text,
    required this.discountpercentage,
    Key? key,
  }) : super(key: key);
  final String image;
  final Color color;
  final String producttype;
  final Color textcolor;
  final String productbrand;
  final String productname;
  final String originalvalue;
  final String discountedvalue;
  final String text;
  final String discountpercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 430,
            width: 220,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  child: Image.asset(image),
                ),
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  //width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: color),
                  ),
                  child: Text(
                    producttype,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: textcolor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  productbrand,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  productname,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      originalvalue,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      discountedvalue,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: 150,
                  child: Text(text),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              alignment: Alignment.center,
              height: 22,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
              ),
              child: Text(
                discountpercentage,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
