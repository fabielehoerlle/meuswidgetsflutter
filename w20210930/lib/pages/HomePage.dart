import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20210930/widgets/CartFooter.dart';
import 'package:w20210930/widgets/Coupon.dart';
import 'package:w20210930/widgets/Produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Produto(
                  image: "assets/shampoo.png",
                  productName: "Shampoo Pantene Hidratação",
                  productSize: "200ml",
                  price: "R\$ 10,70",
                  originalPrice: "R\$ 11,90",
                  quantity: "2",
                ),
                Produto(
                  image: "assets/palmolive.png",
                  productName: "Shampoo Palmolive Naturals",
                  productSize: "Ceramidas Force 350ml",
                  price: "R\$ 9,90",
                  originalPrice: "",
                  quantity: "1",
                ),
                Produto(
                  image: "assets/deodorant.png",
                  productName: "Desodorante Nivea Masculino",
                  productSize: "Aerossol Silver Protect 150ml",
                  price: "R\$ 9,77",
                  originalPrice: "R\$ 13,90",
                  quantity: "1",
                ),
                Coupon()
              ],
            ),
          ),
        ),
        CartFooter(),
      ],
    );
  }
}
