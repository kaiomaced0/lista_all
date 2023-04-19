import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class Conta_page extends StatelessWidget {
  const Conta_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Conta_page(title: 'Conta'),
    );
  }
}

class _Conta_page extends StatefulWidget {
  const _Conta_page({super.key, required this.title});

  final String title;

  @override
  State<_Conta_page> createState() => Conta_pageState();
}

class Conta_pageState extends State<_Conta_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Conta"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
