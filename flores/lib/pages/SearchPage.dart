import 'package:flores/data/boxCollections.data.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/ProductItem.dart';
import 'package:flores/widgets/SeparatorDestaque.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                  SearchPageBody(),
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

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: const [
            SeparatorDestaque(
                text: "Resultados de Busca", image: "assets/coracao.png"),
            SearchList(),
          ],
        ),
      ],
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 600,
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
          ),
          itemCount: boxCollectionProducts.length,
          itemBuilder: (_, index) {
            return ProductItem(
              image: boxCollectionProducts[index].image,
              name: boxCollectionProducts[index].name,
              value: boxCollectionProducts[index].formatPrice(),
              enabled: boxCollectionProducts[index].enabled,
            );
          }),
    );
  }
}
