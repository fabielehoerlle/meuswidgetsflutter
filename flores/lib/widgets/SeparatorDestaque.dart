import 'package:flutter/material.dart';

class SeparatorDestaque extends StatelessWidget {
  const SeparatorDestaque({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 1,
            color: Colors.grey,
          ),
          Center(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 40,
                //width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Image.asset(
                      image,
                      color: Colors.red,
                      height: 25,
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
