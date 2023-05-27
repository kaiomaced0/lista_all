import 'package:flutter/material.dart';
import 'package:lista_all/Produto_page.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/widgets/navigator_telas.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';

Container itemListCarrinhoWidget(List<Item> itens, BuildContext context) {
  print(itens.length);
  print(itens);
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
            width: 200,
            height: 200,
          ),
          title: Text(itens[i].nomeItem),
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
                    },
                  ),
                ),
                Container(
                    width: 100,
                    alignment: Alignment.centerRight,
                    child: Text(
                        'R\$ ' + itens[i].preco.toString(),
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