import 'package:flutter/material.dart';
import 'package:lista_all/Produto_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/repositories/item_repository.dart';

Container getItem(Item item) {
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
      itemCount: 1,
      separatorBuilder: (context, index) => Divider(),
      padding: EdgeInsets.all(16),
      itemBuilder: (_, __) {
        return ListTile(
          leading: Image.asset(
            item.icone,
          ),
          title: Text(item.nomeItem),
          trailing: Text('R\$ ' + item.preco.toString()),
          onTap: (() {}),
        );
      },
    ),
  );
}

Container getItemLista(BuildContext context) {
  ItemRepository.tabela;

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
          leading: Image.asset(
            ItemRepository.tabela[item].icone,
            width: 256,
            height: 256,
          ),
          title: Text(ItemRepository.tabela[item].nomeItem),
          trailing: Text('R\$ ' + ItemRepository.tabela[item].preco.toString()),
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Produto_page(
                  title: 'Produto', item: ItemRepository.tabela[item]),
            ));
          }),
        );
      },
    ),
  );
}
