import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/item_lista.dart';
import 'package:lista_all/model/Item.dart';
import 'package:lista_all/repositories/item_repository.dart';

class Produto_page extends StatelessWidget {
  const Produto_page({super.key, required this.item});

  final Item item;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Produto_page(title: 'Produto'),
    );
  }
}

class _Produto_page extends StatefulWidget {
  const _Produto_page({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<_Produto_page> createState() => Produto_pageState();
}

class Produto_pageState extends State<_Produto_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Home_drawer(context),
      appBar: getHome_appbar("Produto", context),
      body: getItem(ItemRepository().tabela[0]),
      bottomNavigationBar: getHome_bnb(context),
    );
  }
}
