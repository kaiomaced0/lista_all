import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Favoritos_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/widgets/navigator_telas.dart';



BottomNavigationBar bnb(BuildContext context) {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.home),
        label: " Home",
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
      mudarTela(value, context);
    },
    currentIndex: currentBnb,
  );
}


