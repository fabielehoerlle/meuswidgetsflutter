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
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 950),
              child: Column(
                children: const [
                  Destaques(),
                  SeparatorItem(text: "We Like", image: "assets/flower.png"),
                  FlowersList(),
                  SeparatorItem(
                      text: "Avaliações", image: "assets/coracao.png"),
                  Evaluation(),
                  SeparatorItem(
                      text: "Siga nossas Inspirações",
                      image: "assets/instagram.png"),
                  Instagram(),
                ],
              ),
            ),
            const Separator(),
            Container(
              constraints: const BoxConstraints(maxWidth: 950),
              child: Column(
                children: const [
                  FooterMenu(),
                  Footer(),
                ],
              ),
            ),
          ],
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
            margin: const EdgeInsets.only(top: 20),
            height: 1,
            color: Colors.grey,
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 40,
                //width: 300,
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
        Container(
          color: const Color(0xff4B4A4A),
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
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
        Container(
          color: const Color(0xff4B4A4A),
          child: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          ),
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
      width: 230,
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
            sub2: "21/05/2021",
          ),
          SizedBox(width: 110),
          Depoimento(
            text:
                "EXCELENTE: Tudo ótimo, obrigado! Mesmo estando longe pude me " +
                    "fazer presente no dia das mães!",
            sub1: "D.O.  ",
            sub2: "15/05/2021",
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
          const SizedBox(height: 10),
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
              child: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 230 / 2,
            child: Container(
              color: const Color(0xff4B4A4A),
              child: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
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
            Image.asset("assets/1.png"),
            const SizedBox(width: 10),
            Image.asset("assets/2.png"),
            const SizedBox(width: 10),
            Image.asset("assets/3.png"),
            const SizedBox(width: 10),
            Image.asset("assets/4.png"),
            const SizedBox(width: 10),
            Image.asset("assets/5.png"),
            const SizedBox(width: 10),
            Image.asset("assets/6.png"),
          ],
        ),
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150),
      height: 1,
      color: Colors.grey,
    );
  }
}

class FooterMenu extends StatelessWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      //height: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Institucional(),
          Spacer(),
          Atendimento(),
          Spacer(),
          Noticia(),
        ],
      ),
    );
  }
}

class Institucional extends StatelessWidget {
  const Institucional({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Institucional",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Quem Somos",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Corporativo",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Eventos",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        RichText(
          text: const TextSpan(
            text: "Televendas: ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "(51) 3564-1865",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            text: "Whatsapp: ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "(51) 99539-0290",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Text(
          "E-mail: atendimento@cantinhodasflores.com.br",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Seg à Sex das 8h às 18h. Sáb das 8h às 17h",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Av Pedro Adams Filho, 105, Industrial - Novo Hamburgo/RS",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Atendimento extends StatelessWidget {
  const Atendimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Atendimento",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Atendimento ao Cliente",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Fale Conosco",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Cancelamento Pedido",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Formas de Pagamento",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Faturamento",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Noticia extends StatelessWidget {
  const Noticia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Assine nossa newsletter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 230,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              suffixIcon: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Enviar"),
              ),
              labelText: "Informe seu e-mail",
              labelStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 60),
        Row(
          children: [
            Image.asset("assets/boleto.png"),
            const SizedBox(width: 10),
            Image.asset("assets/visa.png"),
            const SizedBox(width: 10),
            Image.asset("assets/master.png"),
            const SizedBox(width: 10),
            Image.asset("assets/dinners.png"),
          ],
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(height: 5),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "Todos os direitos reservados - \n ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "Vnda - Tecnologia para Ecommerce",
                  style: TextStyle(
                    color: Colors.black,
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
