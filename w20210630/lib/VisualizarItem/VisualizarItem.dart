import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisualizarItem extends StatelessWidget {
  const VisualizarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 35,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios, size: 30),
                Icon(Icons.shopping_cart, size: 30),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 95,
                  ),
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2019/05/28/15/21/cherry-4235380_1280.png",
                    width: 175,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cereja - Pequena",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "1 pc (500g - 700g)",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        height: 80,
                        child: Text(
                          "A cereja é uma fruta rica em polifenóis, fibras, vitamina A, C e betacaroteno, com propriedades antioxidantes e anti-inflamatórias.",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 3.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.black,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                                Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 21,
                                  backgroundColor: Colors.black,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "R\$ 5,00",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Icon(Icons.motorcycle),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Entrega Gratuita"),
                          Spacer(),
                          Text(
                            "Desconto de 20%",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 5.0,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 1.53,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Adicionar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
