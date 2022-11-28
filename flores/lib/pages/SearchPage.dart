import 'package:flores/data/boxCollections.data.dart';
import 'package:flores/widgets/Footer.dart';
import 'package:flores/widgets/Header.dart';
import 'package:flores/widgets/ProductItem.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Resultados de busca:",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SearchList(),
        ],
      ),
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.96,
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
