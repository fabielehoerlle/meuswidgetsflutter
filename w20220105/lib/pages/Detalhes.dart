import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20220105/widgets/ListaDeIngredientes.dart';
import 'package:w20220105/widgets/ModoDeFazer.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Torta Trufada de\nLimão",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff640E07),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.share_outlined,
                  size: 18,
                ),
                const SizedBox(width: 5),
                const Text(
                  "Compartilhar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                color: Colors.black,
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    "assets/tortadelimao.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListaDeIngredientes(),
            const SizedBox(height: 30),
            ModoDeFazer(),
          ],
        ),
      ),
    );
  }
}
