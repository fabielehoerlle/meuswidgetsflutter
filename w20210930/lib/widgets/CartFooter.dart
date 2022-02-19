import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartFooter extends StatelessWidget {
  const CartFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      //height: 85,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 10,
              bottom: 15,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TOTAL"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "R\$ 30,37",
                      style: TextStyle(
                        color: Color(0xffDA1386),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "ou em até 1x de R\$ 30,37",
                      style: TextStyle(
                        color: Color(0xffDA1386),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            width: double.maxFinite,
            child: Text(
              "FECHAR PEDIDO",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
