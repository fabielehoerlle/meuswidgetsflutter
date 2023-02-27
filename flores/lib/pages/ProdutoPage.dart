import 'package:flores/data/classes.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  final ProductData produto;
  const ProdutoPage({
    Key? key,
    required this.produto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProdutoBody(produto: produto),
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

class ProdutoBody extends StatelessWidget {
  final ProductData produto;
  const ProdutoBody({
    Key? key,
    required this.produto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 950),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProdutoInfo(
                  icon: Icons.local_florist_outlined,
                  text1: "Flores Frescas",
                  text2: "Padrão de Qualidade"),
              ProdutoInfo(
                  icon: Icons.email_outlined,
                  text1: "Acompanha Cartão",
                  text2: "Exclusivo para sua Mensagem"),
              ProdutoInfo(
                  icon: Icons.local_shipping_outlined,
                  text1: "Entregamos em Porto Alegre e Vale dos Sinos",
                  text2: "Saiba mais detalhes sobre a entrega"),
            ],
          ),
          Row(
            children: [
              Container(
                width: 550,
                child: Image.asset(
                  "assets/9.png",
                  width: 500,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produto.name,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "REF: 000${produto.id}",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "${produto.formatPrice()}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(140, 30),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "COMPRAR",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "DESCRIÇÃO",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(
                      text: "DIGITE O CEP PARA ENTREGA",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "  (Procurar CEP)",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        suffixIcon: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "CONSULTAR ENTREGA",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        labelText: "CEP",
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.grey,
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

class ProdutoInfo extends StatelessWidget {
  const ProdutoInfo({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final IconData icon;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                text2,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
