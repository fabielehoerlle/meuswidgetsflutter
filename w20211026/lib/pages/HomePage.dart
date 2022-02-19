import 'package:flutter/widgets.dart';
import 'package:w20211026/widgets/Produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Produto(
              percentageDiscount: "-14%",
              image: "assets/loção1.png",
              name1: "Loção",
              name2: "Hidratante",
              name3: "Corporal...",
              company: "CeraVe",
              quantity: "473ml",
              originalValue: "R\$89,90",
              discountValue: "R\$77,31",
            ),
            Produto(
              percentageDiscount: "-5%",
              image: "assets/toothpaste.png",
              name1: "Pasta de",
              name2: "Dente Oral-B",
              name3: "Gengiva...",
              company: "Oral-B",
              quantity: "102g",
              originalValue: "R\$20,79",
              discountValue: "R\$19,75",
            ),
            Produto(
              percentageDiscount: "-5%",
              image: "assets/shampoo.png",
              name1: "Shampoo",
              name2: "2 em 1",
              name3: "Dove Men...",
              company: "Dove",
              quantity: "200ml",
              originalValue: "R\$13,39",
              discountValue: "R\$12,72",
            ),
            Produto(
              percentageDiscount: "-7%",
              image: "assets/desodorante.png",
              name1: "Desodorante",
              name2: "Nivea",
              name3: "Clinical...",
              company: "Nivea",
              quantity: "48g",
              originalValue: "R\$21,29",
              discountValue: "R\$19,89",
            ),
            Produto(
              percentageDiscount: "-5%",
              image: "assets/sabonete.png",
              name1: "Sabonete",
              name2: "em Barra",
              name3: "Lux...",
              company: "Lux",
              quantity: "80g",
              originalValue: "R\$2,19",
              discountValue: "R\$2,08",
            ),
            Produto(
              percentageDiscount: "-5%",
              image: "assets/shampoo2.png",
              name1: "Shampoo",
              name2: "Pantene",
              name3: "Micelar...",
              company: "Pantene",
              quantity: "200ml",
              originalValue: "R\$13,50",
              discountValue: "R\$12,82",
            ),
          ],
        ),
      ),
    );
  }
}
