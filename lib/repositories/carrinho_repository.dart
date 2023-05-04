import 'package:flutter/material.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/model/carrinho.dart';
import 'package:lista_all/model/usuario.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

class CarrinhoRepository {
  static List<Item> itensVazio = [];
  static List<Carrinho> listaCarrinhos = [];
}
