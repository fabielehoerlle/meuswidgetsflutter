import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class BebePage extends StatelessWidget {
  const BebePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BebeBody(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BebeBody extends StatelessWidget {
  const BebeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/maternidade.png"),
        Column(
          children: const [
            SeparatorDestaque(text: "Maternidade", image: "assets/coracao.png"),
            SearchBody(),
          ],
        ),
      ],
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 40),
                  //height: 250,
                  width: 200,
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ordenar por:",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        isExpanded: true,
                        value: 2,
                        onChanged: (value) {},
                        items: const [
                          DropdownMenuItem(
                            child: Text(
                              "Ordenar produtos por:",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 0,
                            enabled: false,
                          ),
                          DropdownMenuItem(child: Text("Padrão"), value: 1),
                          DropdownMenuItem(
                              child: Text("Mais recentes"), value: 2),
                          DropdownMenuItem(
                              child: Text("Mais antigos"), value: 3),
                          DropdownMenuItem(
                              child: Text("Menor preço"), value: 4),
                          DropdownMenuItem(
                              child: Text("Maior preço"), value: 5),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        "Produtos:",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        isExpanded: true,
                        value: 2,
                        onChanged: (value) {},
                        items: const [
                          DropdownMenuItem(
                            child: Text(
                              "Produtos:",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: 0,
                            enabled: false,
                          ),
                          DropdownMenuItem(
                              child: Text("Arranjos-florais"), value: 1),
                          DropdownMenuItem(child: Text("Bonsai"), value: 2),
                          DropdownMenuItem(
                              child: Text("Box-collection"), value: 3),
                          DropdownMenuItem(child: Text("Buquês"), value: 4),
                          DropdownMenuItem(child: Text("Cervejas"), value: 5),
                          DropdownMenuItem(child: Text("Cestas"), value: 6),
                          DropdownMenuItem(
                              child: Text("Cestas-aniversário"), value: 7),
                          DropdownMenuItem(
                              child: Text("Cestas-românticas"), value: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const FlowersList(),
          ],
        ),
      ),
    );
  }
}

class FlowersList extends StatelessWidget {
  const FlowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        children: [
          Row(
            children: const [
              FlowerItem(
                  image: "assets/20.png",
                  name: "Welcome Baby",
                  value: "R\$ 220,00"),
              FlowerItem(
                  image: "assets/29.png",
                  name: "Baby Girl",
                  value: "R\$ 199,00"),
              FlowerItem(
                  image: "assets/27.png",
                  name: "Nana Menino",
                  value: "R\$ 345,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/22.png",
                  name: "Nana Menina",
                  value: "R\$ 345,00"),
              FlowerItem(
                  image: "assets/28.png",
                  name: "Box Baby",
                  value: "R\$ 199,00"),
              FlowerItem(
                  image: "assets/23.png",
                  name: "É uma menina",
                  value: "R\$ 119,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/26.png",
                  name: "É um menino",
                  value: "R\$ 119,00"),
              FlowerItem(
                  image: "assets/25.png",
                  name: "Pequena Fofura",
                  value: "R\$ 175,00"),
              FlowerItem(
                  image: "assets/21.png",
                  name: "Baby Urso",
                  value: "R\$ 189,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/30.png",
                  name: "Girl Fofura",
                  value: "R\$ 175,00"),
              FlowerItem(
                image: "assets/24.png",
                name: "Bem Vinda Menina",
                value: "Produto esgotado",
              )
            ],
          ),
        ],
      ),
    );
  }
}

class FlowerItem extends StatelessWidget {
  const FlowerItem({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
  }) : super(key: key);
  final String image;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      //height: 250,
      width: 200,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 200,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            //textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 1,
            width: 30,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xff7B7877),
            ),
          ),
        ],
      ),
    );
  }
}
