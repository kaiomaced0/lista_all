import 'package:flutter/material.dart';
import 'package:lista_all/model/carrinho.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';

class Usuario {
  String nome;
  String login;
  String senha;
  String cpf;
  String email;
  String icone;
  late List<int> cartoes;

  Usuario(this.nome, this.login, this.senha, this.cpf, this.email, this.icone) {
    this.cartoes = [];
  }
}
