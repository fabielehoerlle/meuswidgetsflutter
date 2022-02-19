import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dinheiro extends StatelessWidget {
  const Dinheiro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Descubra mais",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15, left: 5),
                  padding: const EdgeInsets.all(20),
                  height: 195,
                  width: 255,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xffD8D6D7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Função débito",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Você no controle das suas",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "compras do dia a dia de um",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "jeito fácil e transparente.",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.purple,
                        ),
                        height: 45,
                        width: 150,
                        child: const Text(
                          "Ativar débito",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.all(20),
                  height: 195,
                  width: 255,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xffD8D6D7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Indique seus amigos",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Mostre aos seus amigos",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "como é fácil ter uma vida",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "sem burocracia.",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.purple,
                        ),
                        height: 45,
                        width: 150,
                        child: const Text(
                          "Indicar amigos",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 195,
                  width: 255,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color(0xffD8D6D7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "WhatsApp",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Pagamentos seguros, rápidos",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "e sem tarifa. A experiência",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "Nubank sem nem sair da ...",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.purple,
                        ),
                        height: 45,
                        width: 150,
                        child: const Text(
                          "Quero conhecer",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
