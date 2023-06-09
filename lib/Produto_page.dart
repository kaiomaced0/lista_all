import 'package:flutter/material.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/components/item_widget.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/components/home_drawer.dart';
import 'package:lista_all/components/item_lista_widget.dart';
import 'package:lista_all/model/Item.dart';

class Produto_page extends StatefulWidget {
  const Produto_page({
    super.key,
    required this.title,
    required this.item
  });
  final Item item;
  final String title;

  @override
  State<Produto_page> createState() => Produto_pageState();
}

class Produto_pageState extends State<Produto_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Home_drawer(context),
      appBar: appBar("Produto", context),
      body: itemWidget(widget.item, context),
      bottomNavigationBar: bnb(context),
    );
  }
}
