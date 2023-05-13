import 'package:flutter/material.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/model/usuario.dart';

class Carrinho {
  List<Item> itensCarrinho;
  double valorTotal;
  Usuario usuario;

  Carrinho(this.itensCarrinho, this.valorTotal, this.usuario);
}
