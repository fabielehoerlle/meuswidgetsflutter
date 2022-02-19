import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Componente extends StatelessWidget {
  // Aqui eu digo quais são os meus atributos (parâmetros)
  final String label;
  final String text;
  final IconData icon;

  Componente({
    Key? key,
    // Aqui eu digo quais são os "Valores default"
    // Se o usuário colocar apenas Componente()
    // (sem colocar nada dentro)
    // Aí esses valores são usados
    // ---
    // Se eu quiser obrigar o usuário a colocar parâmetros
    // Eu poderia fazer isso aqui:
    //   required this.label,
    //   required this.icon,
    // Viu que eu não coloquei um valor default? (this.label = "Algumacoisa")
    // ---
    // Esses valores são usados ali em baixo
    this.label = "---",
    this.text = "",
    this.icon = Icons.device_unknown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color(0xffD8D6D7),
            ),
            height: 57,
            width: 57,
            child: IconButton(
              onPressed: () {},
              icon: Icon(icon),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
