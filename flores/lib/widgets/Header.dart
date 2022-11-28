import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BarraVerde(),
        HeaderMenu(
          onSearch: onSearch,
        ),
        if (false) SearchBar(),
      ],
    );
  }

  void onSearch(
    String q,
  ) {
    print("Chegou Aqui $q");
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.onSearch,
  }) : super(key: key);

  final Function onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 40, right: 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/logotipo2.png",
          ),
          const Spacer(),
          const Text(
            "FLORES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            "CESTAS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            "OCASIÕES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            "NOVIDADES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            "ENTREGA",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "COMPRAR POR WHATSAPP",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff3CB371),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "(51) - 99539-0290",
                style: TextStyle(
                  color: Color(0xff3CB371),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.whatsapp_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              onSearch("Fabiele");
            },
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class BarraVerde extends StatelessWidget {
  const BarraVerde({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40),
      height: 30,
      width: double.infinity,
      color: const Color(0xff3CB371),
      child: Row(
        children: const [
          Icon(
            Icons.phone,
            size: 17,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            "De segunda a sexta das 8h às 18h. Sábado das 8h às 17h.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.email_outlined,
            size: 17,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            "E-mail: atendimento@cantinhodasflores.com.br",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
