import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Coupon extends StatelessWidget {
  const Coupon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.only(
        top: 20,
        left: 15,
        bottom: 20,
        right: 15,
      ),
      //height: 130,
      width: 400,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "POSSUI CUPOM DE DESCONTO",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: "Informe o cupom aqui",
            ),
          ),
        ],
      ),
    );
  }
}
