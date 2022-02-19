import 'package:flutter/widgets.dart';
import 'package:w20220105/widgets/Receita.dart';

class ListaDeReceitas extends StatelessWidget {
  const ListaDeReceitas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Receita(image: "assets/salgado.png", text: "Salgados"),
          const Receita(image: "assets/massa.png", text: "Massas"),
          const Receita(image: "assets/bolo.png", text: "Doces"),
          const Receita(image: "assets/torta.png", text: "Bolos"),
          const Receita(image: "assets/bebida.png", text: "Bebidas"),
          const Receita(image: "assets/saudavel.png", text: "Saudáveis"),
        ],
      ),
    );
  }
}
