import 'package:flutter/material.dart';
import 'package:lista_all/AdmHome_page.dart';
import 'package:lista_all/AdmProduto_page.dart';
import 'package:lista_all/AdmUsuario_page.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Favoritos_page.dart';
import 'package:lista_all/Home_page.dart';
import 'package:lista_all/Search_page.dart';

int currentBnb = 0;

void mudarTela(int x, BuildContext context) {
  if (x == 0) {
    currentBnb = 0;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Home_page(),
    ));
  }
  if (x == 1) {
    currentBnb = 1;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Carrinho_page(),
    ));
  }
  if (x == 2) {
    currentBnb = 2;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Conta_page(),
    ));
  }
  if (x == 3) {
    currentBnb = 0;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Search_page(),
    ));
  }
  if (x == 4) {
    currentBnb = 0;
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Favoritos_page(),
    ));
  }
}

void mudarTelaAdm(int x, BuildContext context) {
  if (x == 0) {
    currentBnb = 0;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => AdmHome_page(),
    ));
  }
  if (x == 1) {
    currentBnb = 1;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => AdmUsuario_page(),
    ));
  }
  if (x == 2) {
    currentBnb = 2;
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => AdmProduto_page(),
    ));
  }
}