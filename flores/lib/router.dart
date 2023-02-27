import 'package:flores/data/romantic.data.dart';
import 'package:flores/pages/AniversarioPage.dart';
import 'package:flores/pages/BebePage.dart';
import 'package:flores/pages/BoxCollectionPage.dart';
import 'package:flores/pages/HomePage.dart';
import 'package:flores/pages/ProdutoPage.dart';
import 'package:flores/pages/RomanticoPage.dart';
import 'package:flores/pages/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class CustomRouter {
  static FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '/',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const AniversarioPage(),
      ),
    );
    router.define(
      '/produtos',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const HomePage(),
      ),
    );
    router.define(
      '/aniversario',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const AniversarioPage(),
      ),
    );
    router.define(
      '/baby',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const BebePage(),
      ),
    );
    router.define(
      '/boxcollection',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const BoxCollectionPage(),
      ),
    );
    router.define(
      '/romantico',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                const RomanticoPage(),
      ),
    );
    router.define(
      '/produtos/:pid',
      handler: Handler(
        handlerFunc:
            (BuildContext? context, Map<String, List<String>> params) =>
                ProdutoPage(
          produto: romanticProducts.firstWhere(
              (element) => element.id == int.parse(params['pid']![0])),
          // params['requestId']![0]
        ),
      ),
    );
  }

  static void navigateToUri(BuildContext context, String uri) {
    router.navigateTo(
      context,
      uri,
      transition: TransitionType.fadeIn,
    );
  }
}
