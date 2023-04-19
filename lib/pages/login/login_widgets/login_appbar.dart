import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

AppBar getLogin_appbar() {
  return AppBar(
    title: const Text('Login'),
    centerTitle: true,
    backgroundColor: CustomColors().getColorMain(),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
