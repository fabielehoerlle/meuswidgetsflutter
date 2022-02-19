import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.only(top: 20),
        height: 220,
        width: 295,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/vichy.png",
                  width: 75,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Vichy",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Idéal Soleil FPS 30 Efeito \n" +
                          "Base Vichy - Protetor Solar\n" +
                          "40g",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10),
              height: 1,
              width: 295,
              color: Colors.grey,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Column(
                  children: [
                    const Text(
                      "Quantidade",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.pink,
                          ),
                          height: 20,
                          width: 20,
                          child: const Icon(
                            Icons.remove,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          height: 20,
                          width: 45,
                          child: const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.pink,
                          ),
                          height: 20,
                          width: 20,
                          child: const Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    const Text(
                      "Preço",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          "R\$ 66,20",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
