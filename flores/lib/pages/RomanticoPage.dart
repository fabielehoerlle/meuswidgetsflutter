import 'package:flores/data/romantic.data.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SearchSidebar.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class RomanticoPage extends StatelessWidget {
  const RomanticoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  RomanticoBody(),
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RomanticoBody extends StatelessWidget {
  const RomanticoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/romantico1.png"),
        Column(
          children: const [
            SeparatorDestaque(
                text: "Presentes Românticos", image: "assets/coracao.png"),
            SearchBody(),
            SizedBox(height: 100),
            Paginacao(),
          ],
        ),
      ],
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 900,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchSidebar(),
            RomanticosList(),
          ],
        ),
      ),
    );
  }
}

class RomanticosList extends StatelessWidget {
  const RomanticosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.63,
        ),
        itemCount: romanticProducts.length,
        itemBuilder: (_, index) {
          return RomanticoItem(
            image: romanticProducts[index].image,
            name: romanticProducts[index].name,
            value: romanticProducts[index].formatPrice(),
            enabled: romanticProducts[index].enabled,
          );
        },
      ),
    );
  }
}

class RomanticoItem extends StatelessWidget {
  const RomanticoItem({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
    this.enabled = true,
  }) : super(key: key);
  final String image;
  final String name;
  final String value;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    double opacity = enabled ? 1 : 0.5;
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        //height: 250,
        width: 200,
        child: Column(
          children: [
            Image.asset(
              image,
              height: 200,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              //textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 1,
              width: 30,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                color: Color(0xff7B7877),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Paginacao extends StatelessWidget {
  const Paginacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.keyboard_arrow_left,
          size: 15,
        ),
        SizedBox(width: 15),
        Text("1"),
        SizedBox(width: 20),
        Text("2"),
        SizedBox(width: 15),
        Icon(
          Icons.keyboard_arrow_right,
          size: 15,
        ),
      ],
    );
  }
}
