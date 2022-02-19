import 'package:flutter/widgets.dart';
import 'package:w20211103/widgets/Produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            alignment: Alignment.topCenter,
            child: const Text("2403 produtos encontrados"),
          ),
          Column(
            children: [
              Row(
                children: [
                  const Produto(
                    image: "assets/blush.png",
                    name1: "Blush Color Bruna Tavares - Camélia Único",
                    originalValue: "R\$ 55,90",
                    discountValue: "4x R\$ 9,67",
                    discountPercentage: "30% OFF",
                    text: "ou R\$ 38,70 à vista",
                  ),
                  const Produto(
                    image: "assets/base.png",
                    name1: "Base Líquida Matte Perfect hd 30ml - Boca Rosa",
                    originalValue: "R\$ 49,90",
                    discountValue: "4x R\$ 9,22",
                    discountPercentage: "26% OFF",
                    text: "ou R\$ 36,90 à vista",
                  ),
                ],
              ),
              Row(
                children: [
                  const Produto(
                    image: "assets/primer.png",
                    name1: "Sérum Para Área dos Olhos Payot - Vitamina C",
                    originalValue: "R\$ 62,90",
                    discountValue: "6x R\$ 8,10",
                    discountPercentage: "22% OFF",
                    text: "ou R\$ 48,60 à vista",
                  ),
                  const Produto(
                    image: "assets/sombra.png",
                    name1: "Paleta de sombras 12 Shades 21,5g - Mariana...",
                    originalValue: "R\$ 39,90",
                    discountValue: "4x R\$ 8,32",
                    discountPercentage: "17% OFF",
                    text: "ou R\$ 33,30 à vista",
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
