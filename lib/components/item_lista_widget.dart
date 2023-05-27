import 'package:flutter/material.dart';
import 'package:lista_all/Produto_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';
import 'package:lista_all/repositories/item_repository.dart';

Container itemListWidget(BuildContext context) {
  
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
      itemCount: ItemRepository.tabela.length,
      separatorBuilder: (context, index) => Divider(),
      padding: EdgeInsets.all(16),
      itemBuilder: (BuildContext contexto, int item) {
        return ListTile(
          autofocus: true,
          leading: Image.asset(
            ItemRepository.tabela[item].icone,
            alignment: Alignment.centerLeft,
            width: 100.0,
            height: 300,
          ),
          title: Text(ItemRepository.tabela[item].nomeItem,
              textAlign: TextAlign.left, maxLines: 1, overflow: null),
          subtitle:
              Text(ItemRepository.tabela[item].descricaoCurta, maxLines: 2),
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
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      CarrinhoRepository.adicionaLista(
                          CarrinhoRepository.carrinhoLogado,
                          ItemRepository.tabela[item]);
                    },
                  ),
                ),
                Container(
                    width: 100,
                    alignment: Alignment.centerRight,
                    child: Text(
                        'R\$ ' + ItemRepository.tabela[item].preco.toString(),
                        textAlign: TextAlign.center)),
              ],
            ),
          ),
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Produto_page(
                    title: 'Produto', item: ItemRepository.tabela[item])));
          }),
        );
      },
    ),
  );
}
