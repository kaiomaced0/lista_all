import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/repositories/item_repository.dart';

Container getItemLista() {
  final tabela = ItemRepository.tabela;

  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          CustomColors().getColorCustom1(),
          CustomColors().getColorCustom2(),
        ],
      ),
    ),
    padding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 10,
    ),
  );
}
