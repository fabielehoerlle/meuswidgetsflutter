import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w20230215/pages/LoginPage.dart';
import 'package:w20230215/pages/ResetPasswordPage.dart';
import 'package:w20230215/pages/Signup.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
