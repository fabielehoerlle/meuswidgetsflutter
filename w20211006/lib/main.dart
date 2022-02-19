import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const DefaultTabController(
        length: 5,
        child: const MyHomePage(title: "R. Albânia, 105"),
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
        bottom: TabBar(
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
            //Container(width: double.maxFinite),
          ],
        ),
        title: Row(
          children: [
            const Text(
              "R. Albânia, 105",
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
        padding: const EdgeInsets.only(
          top: 5,
          left: 12,
        ),
        child: Column(
          children: [
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                  FilterTabExpand(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FilterTabExpand extends StatelessWidget {
  const FilterTabExpand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      height: 32,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Ordenar",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Icon(
            Icons.expand_more,
            size: 15,
          ),
        ],
      ),
    );
  }
}
