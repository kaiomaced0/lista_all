import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

FloatingActionButton getFab(String nome, Icon icon, Navigator n) {
  return FloatingActionButton(
    backgroundColor: CustomColors().getColorMain(),
    onPressed: () {
    
  },
  child: Icon(Icons.add, color: Colors.white,),
  );
}
