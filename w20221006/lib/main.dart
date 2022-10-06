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
      title: "Produto Layout",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.yellow[600],
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.shopping_cart),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 50, top: 10),
            child: Center(
              child: Image.asset(
                "assets/1.png",
                height: 200,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 30, bottom: 30),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Banana - Pequena",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "1 pc (500g - 700g)",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.yellow[600],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Banana, pacoba ou pacova é uma pseudobaga da " +
                        "bananeira, uma planta herbácea vivaz acaule da " +
                        "família Musaceae. São cultivadas em 130 países. " +
                        "Originárias do sudeste da Ásia são atualmente " +
                        "cultivadas em praticamente todas as regiões tropicais " +
                        "do planeta.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 32,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "01",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: const Icon(
                          Icons.remove,
                          size: 32,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "R\$ 6,00",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(
                        Icons.motorcycle,
                        size: 32,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Entrega Gratuita",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Desconto de 20%",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellow[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[600],
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow[600],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.shopping_cart_checkout,
                                size: 40,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Adicionar",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
