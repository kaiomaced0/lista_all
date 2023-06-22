import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

FloatingActionButton getFabCarrinho(double x, double y) {
  return FloatingActionButton.extended(
    label: Text(
        'Valor Total: R\$ ' + CarrinhoRepository.carrinhos[UsuarioRepository.usuarioLogado].valorTotal.toString()),
    tooltip: null,
    backgroundColor: CustomColors().getColorMain(),
    onPressed: () {},
  );
}
