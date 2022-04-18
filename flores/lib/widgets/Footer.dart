import 'package:flores/widgets/Separator.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Separator(),
        Container(
          constraints: const BoxConstraints(maxWidth: 950),
          child: Column(
            children: const [
              FooterMenu(),
              FooterDireitos(),
            ],
          ),
        ),
      ],
    );
  }
}

class FooterMenu extends StatelessWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      //height: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Institucional(),
          Spacer(),
          Atendimento(),
          Spacer(),
          Noticia(),
        ],
      ),
    );
  }
}

class Institucional extends StatelessWidget {
  const Institucional({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Institucional",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Quem Somos",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Corporativo",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Eventos",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        RichText(
          text: const TextSpan(
            text: "Televendas: ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "(51) 3564-1865",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            text: "Whatsapp: ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "(51) 99539-0290",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Text(
          "E-mail: atendimento@cantinhodasflores.com.br",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Seg à Sex das 8h às 18h. Sáb das 8h às 17h",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Av Pedro Adams Filho, 105, Industrial - Novo Hamburgo/RS",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Atendimento extends StatelessWidget {
  const Atendimento({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Atendimento",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Atendimento ao Cliente",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Fale Conosco",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Cancelamento Pedido",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Formas de Pagamento",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "Faturamento",
          style: TextStyle(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Noticia extends StatelessWidget {
  const Noticia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Assine nossa newsletter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 230,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              suffixIcon: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Enviar"),
              ),
              labelText: "Informe seu e-mail",
              labelStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 60),
        Row(
          children: [
            Image.asset("assets/boleto.png"),
            const SizedBox(width: 10),
            Image.asset("assets/visa.png"),
            const SizedBox(width: 10),
            Image.asset("assets/master.png"),
            const SizedBox(width: 10),
            Image.asset("assets/dinners.png"),
          ],
        ),
      ],
    );
  }
}

class FooterDireitos extends StatelessWidget {
  const FooterDireitos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 5),
      child: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey,
          ),
          const SizedBox(height: 5),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "Todos os direitos reservados - \n ",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "Vnda - Tecnologia para Ecommerce",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
