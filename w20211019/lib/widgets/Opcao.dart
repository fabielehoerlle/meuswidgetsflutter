import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Opcao extends StatelessWidget {
  const Opcao({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 75,
              width: 255,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color(0xffD8D6D7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Você tem até "),
                        TextSpan(
                          text: "R\$ 9.800,00",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "disponíveis para empréstimo.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 75,
              width: 255,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color(0xffD8D6D7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Vamos reinventar o jeito de",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "investir."),
                        TextSpan(
                          text: " Cadastre-se e não ...",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 75,
              width: 255,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Color(0xffD8D6D7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Salve seus amigos da",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "burocracia"),
                        TextSpan(
                          text: " Faça um convite ...",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
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
      ),
    );
  }
}
