import 'package:flutter/widgets.dart';
import 'package:w20220105/widgets/Ingrediente.dart';

class ListaDeIngredientes extends StatelessWidget {
  const ListaDeIngredientes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/comida.png",
          height: 40,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ingredientes",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff640E07),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Ingrediente(text: "2 Pacotinhos de Biscoito Maizena"),
                Ingrediente(
                    text: "5 Colheres (Sopa) de Manteiga (ou Margarina)"),
                Ingrediente(text: "500g de Chocolate Branco Picado"),
                Ingrediente(text: "2 Cremes de Leite"),
                Ingrediente(text: "2 Limões"),
                Ingrediente(text: "300ml de Chantilly"),
                Ingrediente(text: "1 Colher (Sopa) de Açúcar"),
                Ingrediente(text: "Raspas de 1 Limão"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
