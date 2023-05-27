import 'package:flutter/material.dart';

class Item {
  String icone;
  String nomeItem;
  double preco;
  String descricaoCurta;
  String descricao;

  Item(this.icone, this.nomeItem, this.preco, this.descricaoCurta,
      this.descricao);

  @override
  String toString() => nomeItem;
}
