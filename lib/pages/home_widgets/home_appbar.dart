import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';

// ignore: non_constant_identifier_names
BottomNavigationBar getHome_bnb(BuildContext context) {
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.home),
        label: " Home",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.search),
        label: " Search",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.shopping_cart),
        label: " Carrinho",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.account_circle),
        label: " Conta",
      ),
    ],
  );
}

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
