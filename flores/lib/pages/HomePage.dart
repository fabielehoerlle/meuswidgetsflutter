import 'package:flores/widgets/Header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          HomePageBody(),
        ],
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 950),
          child: Column(
            children: const [
              Destaques(),
              SeparatorItem(text: "We Like", image: "assets/flower.png"),
              FlowersList(),
              SeparatorItem(text: "Avaliações", image: "assets/coracao.png"),
              Evaluation(),
              SeparatorItem(
                  text: "Siga nossas Inspirações",
                  image: "assets/instagram.png"),
              Instagram(),
            ],
          ),
        ),
      ),
    );
  }
}

class Destaques extends StatelessWidget {
  const Destaques({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/box.png",
            height: 540,
            width: 580,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Image.asset(
                "assets/romantico.png",
                height: 360,
                width: 360,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    "assets/bebe.png",
                    height: 170,
                    width: 175,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    "assets/aniversario.png",
                    height: 170,
                    width: 175,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SeparatorItem extends StatelessWidget {
  const SeparatorItem({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 1,
            color: Colors.grey,
          ),
          Center(
            child: Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    image,
                    color: Colors.red,
                    height: 25,
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

class FlowersList extends StatelessWidget {
  const FlowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                FlowerItem(
                  image: "assets/pink.png",
                  name: "Buque Charme",
                  value: "R\$ 305,00",
                ),
                FlowerItem(
                  image: "assets/rosas.png",
                  name: "Special Roses",
                  value: "R\$ 494,00",
                ),
                FlowerItem(
                  image: "assets/buque.png",
                  name: "Amore Mio",
                  value: "R\$ 171,00",
                ),
                FlowerItem(
                  image: "assets/girassol.png",
                  name: "Girassol",
                  value: "R\$ 138,00",
                ),
                FlowerItem(
                  image: "assets/cesta.png",
                  name: "Garden Roses",
                  value: "R\$ 438,00",
                ),
                FlowerItem(
                  image: "assets/love.png",
                  name: "Amor Perfeito",
                  value: "R\$ 105,00",
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_right),
        ),
      ],
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
      width: 220,
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

class Evaluation extends StatelessWidget {
  const Evaluation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      //height: 200,
      child: Row(
        children: const [
          Depoimento(
            text: "EXCELENTE: Muito obrigado a todos vocês. Começaram a semana " +
                "fazendo várias pessoas felizes: a Fernanda, a mim e a todos os " +
                "colegas e amigos que viram a alegria dela com as flores. MUITO OBRIGAD0!",
            sub1: "T.S.  ",
            sub2: "21/05/2018",
          ),
          SizedBox(width: 110),
          Depoimento(
            text:
                "EXCELENTE: Tudo ótimo, obrigado! Mesmo estando longe pude me " +
                    "fazer presente no dia das mães!",
            sub1: "D.O.  ",
            sub2: "15/05/2018",
          ),
        ],
      ),
    );
  }
}

class Depoimento extends StatelessWidget {
  const Depoimento({
    Key? key,
    required this.text,
    required this.sub1,
    required this.sub2,
  }) : super(key: key);
  final String text;
  final String sub1;
  final String sub2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 420,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
          RichText(
            text: TextSpan(
              text: sub1,
              style: const TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: sub2,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          const Inspiracoes(),
          Positioned(
            left: 0,
            top: 230 / 2,
            child: Container(
              color: const Color(0xff4B4A4A),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 230 / 2,
            child: Container(
              color: const Color(0xff4B4A4A),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Inspiracoes extends StatelessWidget {
  const Inspiracoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 230,
              width: 230,
              color: Colors.pink,
            ),
            const SizedBox(width: 10),
            Container(
              height: 230,
              width: 230,
              color: Colors.red,
            ),
            const SizedBox(width: 10),
            Container(
              height: 230,
              width: 230,
              color: Colors.blue,
            ),
            const SizedBox(width: 10),
            Container(
              height: 230,
              width: 230,
              color: Colors.yellow,
            ),
            const SizedBox(width: 10),
            Container(
              height: 230,
              width: 230,
              color: Colors.purple,
            ),
            const SizedBox(width: 10),
            Container(
              height: 230,
              width: 230,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
