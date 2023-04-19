import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class AdmUsuario_page extends StatelessWidget {
  const AdmUsuario_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _AdmUsuario_page(title: 'Adm Home'),
    );
  }
}

class _AdmUsuario_page extends StatefulWidget {
  const _AdmUsuario_page({super.key, required this.title});

  final String title;

  @override
  State<_AdmUsuario_page> createState() => AdmUsuario_pageState();
}

class AdmUsuario_pageState extends State<_AdmUsuario_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Adm Home"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
