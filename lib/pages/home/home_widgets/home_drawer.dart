// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

Drawer getHome_drawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: CustomColors().getColorMain(),
          ),
          accountName: Text('Kaio Macedo'),
          accountEmail: Text('kaiomacedo@unitins.br'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
                    "KM",
                    style: TextStyle(fontSize: 40),
                    ),
          ),
          ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: CustomColors().getColorMain(),
          ),
          title: Text(
            'Configurações'
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_back,
            color: CustomColors().getColorMain(),
          ),
          title: Text(
            'Sair'
          ),
        ),
      ],
    ),

  );
}
