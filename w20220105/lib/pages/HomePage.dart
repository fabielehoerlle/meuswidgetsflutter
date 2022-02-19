import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20220105/widgets/ListaDeReceitas.dart';
import 'package:w20220105/widgets/ReceitaItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //const Text("Eu tô em cima"),
          const ListaDeReceitas(),
          //const Text("Eu tô embaixo"),
          const SizedBox(height: 30),
          Column(
            children: [
              Row(
                children: [
                  const ReceitaItem(),
                  const ReceitaItem(),
                ],
              ),
              Row(
                children: [
                  const ReceitaItem(),
                  const ReceitaItem(),
                ],
              ),
              Row(
                children: [
                  const ReceitaItem(),
                  const ReceitaItem(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
