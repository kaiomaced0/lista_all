import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Favoritos_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';

// ignore: non_constant_identifier_names
BottomNavigationBar getHome_bnb(BuildContext context) {
  void mudarTela(int x) {
    if (x == 0) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Home_page(),
      ));
    }
    if (x == 1) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Search_page(),
      ));
    }
    if (x == 2) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Carrinho_page(),
      ));
    }
    if (x == 3) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Conta_page(),
      ));
    }
  }

  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
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
    onTap: (value) {
      mudarTela(value);
    },
  );
}

AppBar getHome_appbar(String titulo, BuildContext context) {
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
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Favoritos_page(),
          ));
        },
      ),
      IconButton(
        icon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Search_page(),
          ));
        },
      ),
    ],
  );
}
