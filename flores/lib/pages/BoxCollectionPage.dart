import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SearchSidebar.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class BoxCollectionPage extends StatelessWidget {
  const BoxCollectionPage({Key? key}) : super(key: key);

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
                  BoxCollectionBody(),
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

class BoxCollectionBody extends StatelessWidget {
  const BoxCollectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/boxcollection.png"),
        Column(
          children: const [
            SeparatorDestaque(
                text: "Box Collection", image: "assets/coracao.png"),
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
        width: 900,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchSidebar(),
            BoxCollectionsList(),
          ],
        ),
      ),
    );
  }
}

class BoxCollectionsList extends StatelessWidget {
  const BoxCollectionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        children: [
          Row(
            children: const [
              BoxCollectionItem(
                  image: "assets/17.png",
                  name: "Box Flower",
                  value: "R\$ 260,00"),
              BoxCollectionItem(
                  image: "assets/20.png",
                  name: "Box Welcome Baby",
                  value: "R\$ 220,00"),
              BoxCollectionItem(
                  image: "assets/19.png",
                  name: "Box Amor",
                  value: "R\$ 250,00"),
            ],
          ),
          Row(
            children: const [
              BoxCollectionItem(
                  image: "assets/28.png",
                  name: "Box Baby",
                  value: "R\$ 199,00"),
              BoxCollectionItem(
                  image: "assets/30.png",
                  name: "Box Girl Fofura",
                  value: "R\$ 175,00"),
              BoxCollectionItem(
                  image: "assets/44.png",
                  name: "Box Sweet",
                  value: "R\$ 150,00"),
            ],
          ),
          Row(
            children: const [
              BoxCollectionItem(
                  image: "assets/29.png",
                  name: "Box Baby Girl",
                  value: "R\$ 199,00"),
              BoxCollectionItem(
                  image: "assets/43.png",
                  name: "Box Alegria",
                  value: "R\$ 128,00"),
              BoxCollectionItem(
                image: "assets/42.png",
                name: "Box Colors",
                value: "R\$ 159,00",
              ),
            ],
          ),
          Row(
            children: const [
              BoxCollectionItem(
                image: "assets/18.png",
                name: "Box Amo Você",
                value: "Produto esgotado",
                enabled: false,
              ),
              BoxCollectionItem(
                image: "assets/41.png",
                name: "Box Girassóis",
                value: "Produto esgotado",
                enabled: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BoxCollectionItem extends StatelessWidget {
  const BoxCollectionItem({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
    this.enabled = true,
  }) : super(key: key);
  final String image;
  final String name;
  final String value;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    double opacity = enabled ? 1 : 0.5;

    return Opacity(
      opacity: opacity,
      child: Container(
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
      ),
    );
  }
}
