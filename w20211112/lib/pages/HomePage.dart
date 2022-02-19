import 'package:flutter/widgets.dart';
import 'package:w20211112/widgets/Blow.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Blow(
                  image: "assets/cream1.png",
                  text1: "Blow Gummies 60 dias de Tratamento Melancia",
                  text2: "(9)",
                  value: "12x de R\$ 13,08",
                  total: "R\$ 157,00 à vista",
                  label: "R\$ 125,60"),
              const Blow(
                image: "assets/cream2.png",
                text1: "Blow Gummies 60 dias de Tratamento Morango",
                text2: "(22)",
                value: "12x de R\$ 13,08",
                total: "R\$ 157,00 à vista",
                label: "R\$ 125,60",
              ),
            ],
          ),
          Row(
            children: [
              const Blow(
                  image: "assets/cream3.png",
                  text1:
                      "Blow Gummies 120 Dias de Tratamento Sabores Morango Melancia",
                  text2: "(6)",
                  value: "12x de R\$ 26,17",
                  total: "R\$ 314,00 à vista",
                  label: "R\$ 251,20"),
              const Blow(
                  image: "assets/cream4.png",
                  text1:
                      "Blow Gummies 120 Dias de Tratamento Sabores Morango Laranja",
                  text2: "(4)",
                  value: "12x de R\$ 26,17",
                  total: "R\$ 314,00 à vista",
                  label: "R\$ 251,20"),
            ],
          )
        ],
      ),
    );
  }
}
