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
            Container(
              height: 250,
              width: 200,
              color: Colors.red,
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
                  image: "assets/love.png",
                  name: "Amor Perfeito",
                  value: "R\$ 199,00"),
              FlowerItem(
                  image: "assets/cesta.png",
                  name: "Garden Roses",
                  value: "R\$ 199,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/pink.png",
                  name: "Buque Charme",
                  value: "R\$ 345,00"),
              FlowerItem(
                  image: "assets/buque.png",
                  name: "Amore Mio",
                  value: "R\$ 345,00"),
              FlowerItem(
                  image: "assets/rosas.png",
                  name: "Special Roses",
                  value: "R\$ 119,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/caixa.png",
                  name: "Cesto Especial",
                  value: "R\$ 119,00"),
              FlowerItem(
                  image: "assets/8.png",
                  name: "Buque Maya",
                  value: "R\$ 175,00,"),
              FlowerItem(
                  image: "assets/17.png",
                  name: "Box Flower",
                  value: "R\$ 189,00"),
            ],
          ),
          Row(
            children: const [
              FlowerItem(
                  image: "assets/11.png",
                  name: "Amor em Rosas",
                  value: "R\$ 175,00"),
              FlowerItem(
                  image: "assets/9.png",
                  name: "Buque My Love",
                  value: "Produto esgotado"),
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
