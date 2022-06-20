import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SearchSidebar.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class RomanticoPage extends StatelessWidget {
  const RomanticoPage({Key? key}) : super(key: key);

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
                  RomanticoBody(),
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

class RomanticoBody extends StatelessWidget {
  const RomanticoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/romantico1.png"),
        Column(
          children: const [
            SeparatorDestaque(
                text: "Presentes Românticos", image: "assets/coracao.png"),
            SearchBody(),
            SizedBox(height: 100),
            Paginacao(),
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
        width: 900,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchSidebar(),
            RomanticosList(),
          ],
        ),
      ),
    );
  }
}

class RomanticosList extends StatelessWidget {
  const RomanticosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        children: [
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/flor.png",
                  name: "Cesto de Rosas",
                  value: "R\$ 362,00"),
              RomanticoItem(
                  image: "assets/love.png",
                  name: "Amor Perfeito",
                  value: "R\$ 105,00"),
              RomanticoItem(
                  image: "assets/cesta.png",
                  name: "Garden Roses",
                  value: "R\$ 438,00"),
            ],
          ),
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/pink.png",
                  name: "Buque Charme",
                  value: "R\$ 305,00"),
              RomanticoItem(
                  image: "assets/buque.png",
                  name: "Amore Mio",
                  value: "R\$ 171,00"),
              RomanticoItem(
                  image: "assets/rosas.png",
                  name: "Special Roses",
                  value: "R\$ 494,00"),
            ],
          ),
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/caixa.png",
                  name: "Cesto Especial",
                  value: "R\$ 355,00"),
              RomanticoItem(
                  image: "assets/8.png",
                  name: "Buque Maya",
                  value: "R\$ 180,00,"),
              RomanticoItem(
                  image: "assets/17.png",
                  name: "Box Flower",
                  value: "R\$ 260,00"),
            ],
          ),
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/11.png",
                  name: "Amor em Rosas",
                  value: "R\$ 260,00"),
              RomanticoItem(
                  image: "assets/9.png",
                  name: "Buque My Love",
                  value: "R\$ 166,00"),
              RomanticoItem(
                  image: "assets/13.png",
                  name: "Urso Amoroso",
                  value: "R\$ 151,00"),
            ],
          ),
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/12.png",
                  name: "Eterno Amor",
                  value: "R\$ 372,00"),
              RomanticoItem(
                image: "assets/7.png",
                name: "Red Love",
                value: "R\$ 98,00",
              ),
              RomanticoItem(
                image: "assets/19.png",
                name: "Box Amor",
                value: "R\$ 250,00",
              ),
            ],
          ),
          Row(
            children: const [
              RomanticoItem(
                  image: "assets/15.png",
                  name: "Amor Encanto",
                  value: "R\$ 139,00"),
              RomanticoItem(
                image: "assets/16.png",
                name: "Duetto",
                value: "R\$ 150,00",
              ),
              RomanticoItem(
                  image: "assets/14.png",
                  name: "Singelo Amor",
                  value: "R\$ 111,00"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              RomanticoItem(
                image: "assets/18.png",
                name: "Box Amo Você",
                value: "R\$ 233,00",
              ),
              RomanticoItem(
                image: "assets/10.png",
                name: "Rustic Chic",
                value: "R\$ 220,00",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RomanticoItem extends StatelessWidget {
  const RomanticoItem({
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

class Paginacao extends StatelessWidget {
  const Paginacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.keyboard_arrow_left,
          size: 15,
        ),
        SizedBox(width: 15),
        Text("1"),
        SizedBox(width: 20),
        Text("2"),
        SizedBox(width: 15),
        Icon(
          Icons.keyboard_arrow_right,
          size: 15,
        ),
      ],
    );
  }
}
