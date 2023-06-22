import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';

Container itemWidget(Item item, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16.0),
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
    child: Container(
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                item.nomeItem,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 400,
                child: Text(
                  item.descricao,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final snackBar = SnackBar(
                      content: const Text('Produto adicionado'),
                      action: SnackBarAction(
                        textColor: Colors.green,
                        onPressed: () {},
                        label: '',
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    CarrinhoRepository.adicionaLista(
                        CarrinhoRepository.carrinhoLogado, item);
                  },
                  child: Card(
                    borderOnForeground: true,
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(height: 8),
                          Text(
                            'Adiconar ao carrinho',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
