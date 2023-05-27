import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Favoritos_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/widgets/navigator_telas.dart';

AppBar appBar(String titulo, BuildContext context) {
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
        onPressed: () {
          mudarTela(4, context);
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          mudarTela(3, context);
        },
      ),
    ],
  );
}
