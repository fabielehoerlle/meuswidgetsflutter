import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150),
      height: 1,
      color: Colors.grey,
    );
  }
}
