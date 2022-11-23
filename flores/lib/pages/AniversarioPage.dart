import 'package:flores/data/birthday.data.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SearchSidebar.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class AniversarioPage extends StatelessWidget {
  const AniversarioPage({Key? key}) : super(key: key);

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
                  AniversarioBody(),
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

class AniversarioBody extends StatelessWidget {
  const AniversarioBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/aniversario1.png"),
        Column(
          children: const [
            SeparatorDestaque(
                text: "Presentes para Aniversário",
                image: "assets/coracao.png"),
            SearchBody(),
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
            AniversariosList(),
          ],
        ),
      ),
    );
  }
}

class AniversariosList extends StatelessWidget {
  const AniversariosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.63,
          crossAxisCount: 3,
        ),
        itemCount: birthdayProducts.length,
        itemBuilder: (_, index) {
          return AniversarioItem(
            image: birthdayProducts[index].image,
            name: birthdayProducts[index].name,
            value: birthdayProducts[index].formatPrice(),
            enabled: birthdayProducts[index].enabled,
          );
        },
      ),
    );
  }
}

class AniversarioItem extends StatelessWidget {
  const AniversarioItem({
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
