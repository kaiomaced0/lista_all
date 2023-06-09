import 'package:flutter/material.dart';
import 'package:lista_all/components/fav_carrinho.dart';
import 'package:lista_all/components/list_item_widget.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/components/home_drawer.dart';
import 'package:lista_all/repositories/carrinho_repository.dart';

class Carrinho_page extends StatelessWidget {
  const Carrinho_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Carrinho_page(title: 'Carrinho'),
    );
  }
}

class _Carrinho_page extends StatefulWidget {
  const _Carrinho_page({super.key, required this.title});

  final String title;

  @override
  State<_Carrinho_page> createState() => Carrinho_pageState();
  
}

class Carrinho_pageState extends State<_Carrinho_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Carrinho", context),
      body: listItemWidget(
          CarrinhoRepository
              .carrinhos[CarrinhoRepository.carrinhoLogado].itensCarrinho,
          context),
      bottomNavigationBar: bnb(context),
      drawer: Home_drawer(context),
      floatingActionButton: getFabCarrinho(100, 100, context),
    );
  }
}
