import 'package:flutter/material.dart';

import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/widgets/navigator_telas.dart';



BottomNavigationBar bnbAdm(BuildContext context) {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.home),
        label: " Home",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.person_pin_sharp),
        label: " Usuarios",
      ),
      BottomNavigationBarItem(
        backgroundColor: CustomColors().getColorMain(),
        icon: Icon(Icons.production_quantity_limits),
        label: " Produtos",
      ),
    ],
    onTap: (value) {
      mudarTelaAdm(value, context);
    },
    currentIndex: currentBnb,
  );
}


