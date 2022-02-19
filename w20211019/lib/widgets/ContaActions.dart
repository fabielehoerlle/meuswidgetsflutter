import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w20211019/widgets/Componente.dart';

class ContaActions extends StatelessWidget {
  const ContaActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Componente(label: "Área Pix", text: "", icon: Icons.paid_outlined),
            Componente(label: "Pagar", text: "", icon: Icons.payment_outlined),
            Componente(
                label: "Transferir",
                text: "",
                icon: Icons.transfer_within_a_station_outlined),
            Componente(
                label: "Depositar", text: "", icon: Icons.card_travel_outlined),
            Componente(
                label: "Pegar",
                text: "empresta",
                icon: Icons.request_page_outlined),
            Componente(
                label: "Recarga",
                text: "de celular",
                icon: Icons.phone_android_outlined),
            Componente(label: "Cobrar", text: "", icon: Icons.money_outlined),
            Componente(
                label: "Doação",
                text: "",
                icon: Icons.favorite_border_outlined),
            Componente(
                label: "Transferir",
                text: "Internac.",
                icon: Icons.language_outlined),
          ],
        ),
      ),
    );
  }
}
