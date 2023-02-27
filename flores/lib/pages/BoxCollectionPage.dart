import 'package:flores/data/boxCollections.data.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/SearchSidebar.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class BoxCollectionPage extends StatelessWidget {
  const BoxCollectionPage({Key? key}) : super(key: key);

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
                  BoxCollectionBody(),
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

class BoxCollectionBody extends StatelessWidget {
  const BoxCollectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/boxcollection.png"),
        Column(
          children: const [
            SeparatorDestaque(
                text: "Box Collection", image: "assets/coracao.png"),
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
            BoxCollectionsList(),
          ],
        ),
      ),
    );
  }
}

class BoxCollectionsList extends StatelessWidget {
  const BoxCollectionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.621,
          ),
          itemCount: boxCollectionProducts.length,
          itemBuilder: (_, index) {
            return BoxCollectionItem(
              image: boxCollectionProducts[index].image,
              name: boxCollectionProducts[index].name,
              value: boxCollectionProducts[index].formatPrice(),
              enabled: boxCollectionProducts[index].enabled,
            );
          }),
    );
  }
}

class BoxCollectionItem extends StatelessWidget {
  const BoxCollectionItem({
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
