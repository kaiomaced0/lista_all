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
  Carrinho carrinho = Carrinho(CarrinhoRepository.itensVazio, 0);

  Usuario(this.nome, this.login, this.senha, this.cpf, this.email, this.icone) {
  }
}
