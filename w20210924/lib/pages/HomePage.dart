import 'package:flutter/widgets.dart';
import 'package:widget20210924/widgets/Produto.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Produto(text: "Blusas", image: "assets/blusa.png"),
              Produto(text: "Calças", image: "assets/calça.png"),
              Produto(text: "Vestidos", image: "assets/vestir.png"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Produto(text: "Beleza", image: "assets/make-up.png"),
              Produto(text: "Calçados", image: "assets/salto.png"),
              Produto(text: "Moda praia", image: "assets/bikini.png"),
            ],
          ),
        ],
      ),
    );
  }
}
