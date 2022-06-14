import 'package:flores/widgets/CustomDropdown.dart';
import 'package:flutter/material.dart';

class SearchSidebar extends StatelessWidget {
  const SearchSidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, right: 40),
      //height: 250,
      width: 250,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ordenar por:",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 150,
            child: CustomDropdown(
              value: 1,
              items: const [
                DropdownMenuItem(
                  child: Text(
                    "Ordenar produtos por:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 0,
                  enabled: false,
                ),
                DropdownMenuItem(child: Text("Padrão"), value: 1),
                DropdownMenuItem(child: Text("Mais recentes"), value: 2),
                DropdownMenuItem(child: Text("Mais antigos"), value: 3),
                DropdownMenuItem(child: Text("Menor preço"), value: 4),
                DropdownMenuItem(child: Text("Maior preço"), value: 5),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "Produtos:",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          CustomDropdown(
            value: 18,
            items: const [
              DropdownMenuItem(
                child: Text(
                  "Produtos:",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: 0,
                enabled: false,
              ),
              DropdownMenuItem(child: Text("Arranjos-Florais"), value: 1),
              DropdownMenuItem(child: Text("Bonsai"), value: 2),
              DropdownMenuItem(child: Text("Box-Collection"), value: 3),
              DropdownMenuItem(child: Text("Buquês"), value: 4),
              DropdownMenuItem(child: Text("Cervejas"), value: 5),
              DropdownMenuItem(child: Text("Cestas"), value: 6),
              DropdownMenuItem(child: Text("Cestas-Aniversário"), value: 7),
              DropdownMenuItem(child: Text("Cestas-Românticas"), value: 8),
              DropdownMenuItem(child: Text("Coleção"), value: 9),
              DropdownMenuItem(child: Text("Coleção-Buquês"), value: 10),
              DropdownMenuItem(child: Text("Dia-dos-Pais"), value: 11),
              DropdownMenuItem(child: Text("Festival-de-Flores"), value: 12),
              DropdownMenuItem(child: Text("Flores"), value: 13),
              DropdownMenuItem(child: Text("Lançamentos"), value: 14),
              DropdownMenuItem(child: Text("Mais-Vendidos"), value: 15),
              DropdownMenuItem(child: Text("Promoção-Namorados"), value: 16),
              DropdownMenuItem(child: Text("Sugestão"), value: 17),
              DropdownMenuItem(child: Text("Valentines"), value: 18),
            ],
          ),
        ],
      ),
    );
  }
}
