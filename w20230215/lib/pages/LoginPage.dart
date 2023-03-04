import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w20230215/pages/ResetPasswordPage.dart';
import 'package:w20230215/pages/Signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final passController = TextEditingController();
  String? loginErrorText;
  String? passErrorText;

  @override
  void dispose() {
    loginController.dispose();
    passController.dispose();
    super.dispose();
  }

  void login() {
    setState(() {
      if (loginController.text == "") {
        loginErrorText = "Preencha seu e-mail";
      }

      if (passController.text == "") {
        passErrorText = "Preencha sua senha";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
        child: ListView(
          children: [
            Image.asset(
              "assets/logo.png",
              height: 128,
              width: 128,
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: loginController,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                setState(() {
                  loginErrorText = null;
                });
              },
              decoration: InputDecoration(
                errorText: loginErrorText,
                border: const OutlineInputBorder(),
                labelText: "E-mail",
                labelStyle: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            PasswordField(
              controller: passController,
              errorText: passErrorText,
              onChanged: (_) {
                setState(() {
                  passErrorText = null;
                });
              },
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordPage(),
                    ),
                  );
                },
                child: const Text(
                  "Recuperar Senha",
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () {
                    login();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Image.asset(
                        "assets/bone.png",
                        height: 28,
                        width: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Login com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Image.asset(
                        "assets/fb-icon.png",
                        height: 28,
                        width: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 40,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupPage(),
                    ),
                  );
                },
                child: const Text(
                  "Cadastre-se",
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
