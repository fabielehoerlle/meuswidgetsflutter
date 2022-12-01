import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final emailKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  key: emailKey,
                  decoration: const InputDecoration(
                    labelText: "E-mail",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "E-mail Obrigatório";
                    }
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Senha",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Senha Obrigatória";
                    }
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                  },
                  child: const Text("Login"),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    emailKey.currentState?.validate();
                    emailKey.currentState?.value;
                  },
                  child: const Text("Esqueceu sua senha"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
