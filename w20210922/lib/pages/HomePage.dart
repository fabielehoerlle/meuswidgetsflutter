import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 50,
          ),
          color: Colors.yellow,
          //height: 400,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "dia das crianças",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/logo.png",
                    height: 30,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Image.asset(
                "assets/off.png",
                width: 300,
              ),
              SizedBox(height: 15),
              Text(
                "entre na brincadeira",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
