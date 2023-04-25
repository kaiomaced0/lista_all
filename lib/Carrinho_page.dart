import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';

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
      appBar: getHome_appbar("Carrinho"),
      body: HomePageContent(),
      bottomNavigationBar: getHome_bnb(context),
      drawer: Home_drawer(),
    );
  }
}
