import 'package:flutter/material.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/components/home_drawer.dart';

import 'package:lista_all/components/list_item_widget.dart';
import 'package:lista_all/model/Item.dart';

class Compra_page extends StatefulWidget {
  const Compra_page({super.key, required this.title, required this.itens});
  final List<Item> itens;
  final String title;

  @override
  State<Compra_page> createState() => Compra_pageState();
}

class Compra_pageState extends State<Compra_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Home_drawer(context),
      appBar: appBar("Compra", context),
      body: listItemWidget(widget.itens, context),
      bottomNavigationBar: bnb(context),
    );
  }
}
