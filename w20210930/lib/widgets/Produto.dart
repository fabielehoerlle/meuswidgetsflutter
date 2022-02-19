import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Produto extends StatelessWidget {
  const Produto({
    Key? key,
    required this.productName,
    required this.productSize,
    required this.price,
    required this.originalPrice,
    required this.quantity,
    required this.image,
  }) : super(key: key);

  final String productName;
  final String productSize;
  final String price;
  final String originalPrice;
  final String quantity;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(6),
      height: 170,
      width: 400,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    this.image,
                    height: 90,
                  ),
                ],
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Container(
                    width: 196,
                    child: Text(
                      this.productName,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    this.productSize,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Icon(
                Icons.close,
                size: 25,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                height: 34,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.remove,
                      size: 15,
                    ),
                    Text(
                      this.quantity,
                      style: TextStyle(fontSize: 16),
                    ),
                    Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    this.originalPrice,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD8D6D7),
                    ),
                  ),
                  Text(
                    this.price,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffDA1386),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
