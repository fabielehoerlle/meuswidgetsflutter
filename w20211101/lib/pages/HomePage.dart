import 'package:flutter/widgets.dart';
import 'package:w20211101/widgets/Shopee.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Shopee(
                  image: "assets/moeda.png", text: "Moedas", label: "Shopee"),
              const Shopee(
                  image: "assets/caminhao.png", text: "Frete", label: "Grátis"),
              const Shopee(
                  image: "assets/brasil.png",
                  text: "Vendedores",
                  label: "Locais"),
              const Shopee(
                  image: "assets/presente.png", text: "Prêmios", label: ""),
              const Shopee(
                  image: "assets/mercado.png", text: "Mercado", label: ""),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Shopee(
                  image: "assets/cupom.png", text: "Cupons", label: "Diários"),
              const Shopee(
                  image: "assets/coraçao.png",
                  text: "Shopee",
                  label: "Doações"),
              const Shopee(
                image: "assets/desconto.png",
                text: "Shopee",
                label: "Oficial",
              ),
              const Shopee(
                image: "assets/caixa.png",
                text: "Opções de",
                label: "Entrega",
              ),
              const Shopee(
                  image: "assets/sacola.png",
                  text: "Leve Mais",
                  label: "por Menos"),
            ],
          ),
        ),
      ],
    );
  }
}
