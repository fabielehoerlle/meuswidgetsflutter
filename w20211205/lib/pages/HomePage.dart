import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
            height: 430,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/kit.png"),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    "Outlet",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "OCÉANE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Kit Glow To Go Duo (2 Produtos)",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "R\$ 138,80",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "R\$ 53,80",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "2x de R\$ 26,90",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Kit de maquiagem com paleta de iluminadores em pó e pincel. Perfeito para um look glamuroso e moderno.",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              alignment: Alignment.center,
              height: 22,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange,
              ),
              child: const Text(
                "-61%",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
