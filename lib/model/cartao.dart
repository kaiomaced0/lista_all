import 'package:flutter/material.dart';
import 'package:lista_all/model/usuario.dart';

class Cartao {
  String nome;
  Usuario dono;
  String numero;
  String bandeira;
  String validade;

  Cartao(this.nome, this.dono, this.numero, this.bandeira, this.validade);
}
