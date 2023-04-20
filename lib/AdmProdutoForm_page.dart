import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class AdmProdutoForm_page extends StatelessWidget {
  const AdmProdutoForm_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _AdmProdutoForm_page(title: 'Adm Home'),
    );
  }
}

class _AdmProdutoForm_page extends StatefulWidget {
  const _AdmProdutoForm_page({super.key, required this.title});

  final String title;

  @override
  State<_AdmProdutoForm_page> createState() => AdmProdutoForm_pageState();
}

class AdmProdutoForm_pageState extends State<_AdmProdutoForm_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHome_appbar("Adm Home"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
