import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class Produto_page extends StatelessWidget {
  const Produto_page({super.key});

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
  const _Produto_page({super.key, required this.title});

  final String title;

  @override
  State<_Produto_page> createState() => Produto_pageState();
}

class Produto_pageState extends State<_Produto_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Produto"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
