import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20210925/widgets/SocialIcon.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SocialIcon(text: "facebook", icon: Icons.facebook),
          SocialIcon(text: "telefone", icon: Icons.call),
          SocialIcon(text: "e-mail", icon: Icons.email),
          SocialIcon(text: "notificação", icon: Icons.notifications_active),
        ],
      ),
    );
  }
}
