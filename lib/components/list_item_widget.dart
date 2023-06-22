import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Produto_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/widgets/navigator_telas.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';

Container listItemWidget(List<Item> itens, BuildContext context) {
  SnackBar snackBar() {
    return SnackBar(
      content: const Text('Produto removido do Carrinho'),
      action: SnackBarAction(
        textColor: Colors.red,
        onPressed: () {},
        label: '',
      ),
    );
  }


  print(itens.length);
  print(itens);
  double tamanhoTelaH = MediaQuery.of(context).size.height;
  double tamanhoTelaW = MediaQuery.of(context).size.width;
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          CustomColors().getColorCustom1(),
          CustomColors().getColorCustom2(),
        ],
      ),
    ),
    child: ListView.separated(
      itemCount: itens.length,
      separatorBuilder: (context, index) => Divider(),
      padding: EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        print(i);
        return ListTile(
          leading: Image.asset(
            itens[i].icone,
            width: tamanhoTelaH * 0.1,
            height: tamanhoTelaH * 0.1,
          ),
          title: Text(
            itens[i].nomeItem,
            softWrap: false,
          ),
          trailing: Container(
            width: 180,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.fromLTRB(16.0, 8.0, 24.0, 12.0),
                  child: IconButton(
                    autofocus: true,
                    color: Colors.white70,
                    hoverColor: Colors.black45,
                    icon: Icon(Icons.highlight_remove),
                    onPressed: () {
                      CarrinhoRepository.removeLista(
                          CarrinhoRepository.carrinhoLogado, itens[i]);

                      mudarTela(1, context);
                      Timer(
                        Duration(seconds: 1),
                        () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBar());
                        },
                      );
                    },
                  ),
                ),
                Container(
                    width: tamanhoTelaH * 0.1,
                    alignment: Alignment.centerRight,
                    child: Text('R\$ ' + itens[i].preco.toString(),
                        textAlign: TextAlign.center)),
              ],
            ),
          ),
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  Produto_page(title: 'Produto', item: itens[i]),
            ));
          }),
        );
      },
    ),
  );
}
