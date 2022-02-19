import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20211019/widgets/Cartao.dart';
import 'package:w20211019/widgets/Componente.dart';
import 'package:w20211019/widgets/ContaActions.dart';
import 'package:w20211019/widgets/Credito.dart';
import 'package:w20211019/widgets/Dinheiro.dart';
import 'package:w20211019/widgets/Emprestimo.dart';
import 'package:w20211019/widgets/Investimento.dart';
import 'package:w20211019/widgets/Opcao.dart';
import 'package:w20211019/widgets/SegurodeVida.dart';

class Conta extends StatelessWidget {
  const Conta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Conta",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.chevron_right_outlined),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Falta pouco para o seu dinheiro começar a render.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "1. Abrir sua conta",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  "2. Fazer seu primeiro depósito",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Text(
                  "3. Ver seu dinheiro rendendo mais do que na poupança",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 10,
                    left: 15,
                    right: 5,
                  ),
                  child: const Text(
                    "Fazer primeiro depósito",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.purple,
                  ),
                  height: 35,
                  width: 200,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          ContaActions(),
          const SizedBox(height: 20),
          Cartao(),
          const SizedBox(height: 15),
          Opcao(),
          const SizedBox(height: 20),
          Credito(),
          Emprestimo(),
          Investimento(),
          SegurodeVida(),
          Dinheiro(),
        ],
      ),
    );
  }
}
