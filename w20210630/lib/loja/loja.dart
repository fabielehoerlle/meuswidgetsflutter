import 'package:flutter/material.dart';
import 'package:layout1/item/main.dart';
import 'package:layout1/loja/Categorias.dart';

class Loja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: "Search Here",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 23,
            child: Categorias(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Wrap(
                      spacing: 7.4,
                      runSpacing: 7.4,
                      children: [
                        Container(
                          height: 355,
                          width: 192,
                          child: Item(),
                        ),
                        Container(
                          height: 355,
                          width: 192,
                          child: Item(),
                        ),
                        Container(
                          height: 355,
                          width: 192,
                          child: Item(),
                        ),
                        Container(
                          height: 355,
                          width: 192,
                          child: Item(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
