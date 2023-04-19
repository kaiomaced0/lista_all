import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

AppBar getHome_appbar(String titulo) {
  Text tituloA = Text(titulo);
  return AppBar(
    title: tituloA,
    centerTitle: true,
    backgroundColor: CustomColors().getColorMain(),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
