import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var child;

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const DefaultTabController(
        length: 5,
        child: MyHomePage(title: "R. Sapiranga, 105"),
      ),
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
        bottom: const TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.red,
          indicatorColor: Colors.red,
          tabs: [
            Tab(text: "Restaurantes"),
            Tab(text: "Mercados"),
            Tab(text: "Bebidas"),
            Tab(text: "Farmácias"),
            Tab(text: "Express"),
          ],
        ),
        title: Row(
          children: [
            const Text(
              "R. Sapiranga, 105",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.expand_more,
                color: Colors.red,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code,
              color: Colors.red,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        height: 32,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const TabBarView(
          children: [
            Icon(Icons.restaurant_menu),
            Icon(Icons.shopping_cart_rounded),
            Icon(Icons.emoji_food_beverage_rounded),
            Icon(Icons.local_pharmacy_rounded),
            Icon(Icons.fast_forward_rounded),
          ],
        ),
      ),
    );
  }
}
