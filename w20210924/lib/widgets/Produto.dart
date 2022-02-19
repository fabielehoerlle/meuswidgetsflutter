import 'package:flutter/widgets.dart';

class Produto extends StatelessWidget {
  String text;
  String image;

  Produto({
    Key? key,
    this.text = 'xxxx',
    this.image = "assets/user.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      //height: 115,
      width: 115,
      color: Color(0xffdddddd),
      child: Column(
        children: [
          Image.asset(
            this.image,
            height: 53,
            width: 53,
          ),
          SizedBox(height: 10),
          Text(
            this.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
