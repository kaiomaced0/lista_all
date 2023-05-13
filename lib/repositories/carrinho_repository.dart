import 'package:flutter/material.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/model/carrinho.dart';
import 'package:lista_all/repositories/item_repository.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

class CarrinhoRepository {
  static void adicionaLista(int posicao, Item item) {
    CarrinhoRepository.carrinhos[posicao].itensCarrinho.add(item);
  }

  static void removeLista(int posicao, Item item) {
    CarrinhoRepository.carrinhos[posicao].itensCarrinho.remove(item);
  }

  static List<Item> itensVazio2 = [
    ItemRepository.tabela[0],
    ItemRepository.tabela[2],
  ];
  static List<Item> itensVazio = [];

  static Carrinho carrinhoVazio =
      Carrinho(itensVazio, 0, UsuarioRepository.listaUsuarios[0]);
  static Carrinho carrinho =
      Carrinho(itensVazio2, 50.00, UsuarioRepository.listaUsuarios[1]);
  static Carrinho carrinho2 =
      Carrinho(itensVazio, 0, UsuarioRepository.listaUsuarios[2]);

  static List<Carrinho> carrinhos = [carrinhoVazio, carrinho, carrinho2];

  static int carrinhoLogado = 0;
}
