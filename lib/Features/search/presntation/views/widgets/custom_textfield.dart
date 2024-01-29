import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          hintText: "Search",
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 28,
          )),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(12)));
  }
}
