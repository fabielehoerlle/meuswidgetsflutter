import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({Key? key}) : super(key: key);

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
                  ProdutoBody(),
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
  const ProdutoBody({Key? key}) : super(key: key);

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
                height: 500,
                width: 550,
                color: Colors.grey,
              ),
              Column(
                children: const [
                  Text("Garden Roses"),
                  Text("REF: 10605"),
                  Text("R\$ 438,00"),
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
