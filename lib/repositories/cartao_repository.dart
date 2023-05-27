import 'package:flutter/material.dart';
import 'package:lista_all/model/cartao.dart';
import 'package:lista_all/model/usuario.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

class CartaoRepository {
  static void adicionaCartao(Cartao, cartao, Usuario usuario) {
    cartoes.add(cartao);
    for (var i = 0; i < UsuarioRepository.listaUsuarios.length; i++) {
      if (UsuarioRepository.listaUsuarios[i] == usuario) {
        if (UsuarioRepository.listaUsuarios[i] == null) {
          List<int> cartoesx = [CartaoRepository.cartoes.length];
        } else {
          UsuarioRepository.listaUsuarios[i].cartoes
              .add(CartaoRepository.cartoes.length);
        }
      }
    }
  }

  static List<Cartao> cartoes = [];
}
