import 'package:flutter/material.dart';
import 'package:layoutviagem/locais.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.network(
                    "https://s1.1zoom.me/big0/971/359586-admin.jpg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    iconSize: 35,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    iconSize: 35,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200, left: 30),
                    child: Text(
                      "Viagens",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Text(
                      "Incríveis",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListView(
                children: [
                  Locais(
                      local: "Holanda",
                      img:
                          "https://www.folhadaregiao.com.br/wp-content/uploads/2019/10/10-coisas-para-fazer-em-amsterda.jpg",
                      preco: "R\$ 2000,00"),
                  Locais(
                      local: "Nova York",
                      img:
                          "https://images.madeiramadeira.com.br/product/images/33150230-papel-de-parede-paisagem-cidade-nova-york-predios-gg454prdzkb0b1n1xm87m-179-1-800x729.jpg",
                      preco: "R\$ 2500,00"),
                  Locais(
                      local: "Londres",
                      img:
                          "https://i.pinimg.com/originals/41/3f/7c/413f7c02161036ced1aa6b02ed78492b.jpg",
                      preco: "R\$ 3500,00"),
                  Locais(
                      local: "Brasil",
                      img:
                          "https://upload.wikimedia.org/wikipedia/commons/8/86/Recife%2C_Pernambuco_%282%29_-_Brasil.PNG",
                      preco: "R\$ 1500,00"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
