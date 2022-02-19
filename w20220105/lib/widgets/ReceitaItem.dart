import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReceitaItem extends StatelessWidget {
  const ReceitaItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: 150,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.black,
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      "assets/tortadelimao.webp",
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 18,
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  height: 22,
                  width: 60,
                  child: const Text(
                    "Novo!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff640E07),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: 10,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  height: 25,
                  width: 25,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
              Positioned(
                width: 90,
                bottom: 0,
                left: 25,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(160),
                    ),
                  ),
                  height: 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/bolo.png",
                        height: 25,
                      ),
                      const Text(
                        "Doces",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: const Text(
              "Torta Trufada de Limão",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
