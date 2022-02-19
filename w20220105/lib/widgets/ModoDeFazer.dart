import 'package:flutter/widgets.dart';

class ModoDeFazer extends StatelessWidget {
  const ModoDeFazer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/mododefazer.png",
          height: 40,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Modo de Fazer",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff640E07),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Triture os biscoitos de Maizena até virar " +
                        "farelo e adicione a manteiga e misture " +
                        "até virar uma massinha. Passe para " +
                        "uma forma e modele a massa no fundo " +
                        "e nas laterais da forma. Leve ao forno " +
                        "pré-aquecido a 200°graus por 15 minutos.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Pique o chocolate branco e leve ao " +
                        "microondas de 30 em 30 segundos até " +
                        "derreter, adicione 1 creme de leite e " +
                        "misture até virar um creme. Adicione o " +
                        "suco de limão e misture. Despeje tudo " +
                        "na forma, espalhe e leve à geladeira por " +
                        "3 a 4 horas.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Coloque o chantilly na batedeira com o " +
                        "açúcar e bata até ficar cremoso. " +
                        "Adicione por cima da torta, espalhe, " +
                        "finalize raspando a casca de um limão por cima",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
