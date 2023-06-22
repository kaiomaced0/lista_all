import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';
import 'package:lista_all/repositories/usuario_repository.dart';

void showConfirmationDialogCompra(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Confirmar Compra'),
      content: Text(
          'Tem certeza que deseja realizar essa compra, no valor de R\$ ' +
              CarrinhoRepository
                  .carrinhos[UsuarioRepository.usuarioLogado].valorTotal
                  .toStringAsFixed(2)),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Carrinho_page()),
            );
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            print('Compra realizada!');
            List<Item> itens = [];
            CarrinhoRepository.carrinhos[UsuarioRepository.usuarioLogado]
                .itensCarrinho = itens;
            CarrinhoRepository
                .carrinhos[UsuarioRepository.usuarioLogado].valorTotal = 0.0;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Carrinho_page()),
            );
          },
          child: Text('Confirmar'),
        ),
      ],
    ),
  );
}

FloatingActionButton getFabCarrinho(double x, double y, BuildContext context) {
  return FloatingActionButton.extended(
    label: Text('Valor Total: R\$ ' +
        CarrinhoRepository.carrinhos[UsuarioRepository.usuarioLogado].valorTotal
            .toStringAsFixed(2)),
    tooltip: null,
    backgroundColor: CustomColors().getColorMain(),
    onPressed: () {
      showConfirmationDialogCompra(context);
    },
  );
}
