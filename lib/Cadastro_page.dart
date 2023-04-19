import 'package:flutter/material.dart';
import 'package:lista_all/pages/home/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home/home_widgets/home_content.dart';
import 'package:lista_all/pages/home/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home/home_widgets/home_fab.dart';

class Cadastro_page extends StatelessWidget {
  const Cadastro_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Cadastro_page(title: 'Cadastro'),
    );
  }
}

class _Cadastro_page extends StatefulWidget {
  const _Cadastro_page({super.key, required this.title});

  final String title;

  @override
  State<_Cadastro_page> createState() => Cadastro_pageState();
}

class Cadastro_pageState extends State<_Cadastro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar(),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
