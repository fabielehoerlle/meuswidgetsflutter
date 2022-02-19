import 'package:flutter/widgets.dart';
import 'package:w20211130/widgets/Makes.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              Makes(image: "assets/shadow.png", text: "Maquiagem"),
              Makes(image: "assets/perfume.png", text: "Perfume"),
              Makes(image: "assets/hair.png", text: "Cabelo"),
              Makes(image: "assets/facials.png", text: "Facial"),
              Makes(image: "assets/deodorant.png", text: "Higiene"),
            ],
          ),
          Row(
            children: [
              Makes(image: "assets/body.png", text: "Corporal"),
              Makes(image: "assets/medicine.png", text: "Medicamento"),
              Makes(image: "assets/soap.png", text: "Infantil"),
              Makes(image: "assets/bath.png", text: "Banho"),
              Makes(image: "assets/toothpaste.png", text: "Bucal"),
            ],
          ),
        ],
      ),
    );
  }
}
