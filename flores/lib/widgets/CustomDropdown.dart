import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  List<DropdownMenuItem<int>> items;
  int value;

  CustomDropdown({
    Key? key,
    required this.items,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        hoverColor: const Color(0xff3CB371),
        focusColor: const Color(0xff3CB371),
      ),
      child: DropdownButtonFormField<int>(
        focusColor: Colors.white,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
        isExpanded: true,
        value: value,
        onChanged: (value) {},
        items: items,
      ),
    );
  }
}
