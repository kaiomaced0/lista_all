import 'package:flutter/material.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/components/bnb_adm.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/components/home_drawer.dart';

class AdmUsuarioForm_page extends StatelessWidget {
  const AdmUsuarioForm_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _AdmUsuarioForm_page(title: 'Adm Home'),
    );
  }
}

class _AdmUsuarioForm_page extends StatefulWidget {
  const _AdmUsuarioForm_page({super.key, required this.title});

  final String title;

  @override
  State<_AdmUsuarioForm_page> createState() => AdmUsuarioForm_pageState();
}

class AdmUsuarioForm_pageState extends State<_AdmUsuarioForm_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Adm Home", context),
      body: HomePageContent(),
      bottomNavigationBar: bnbAdm(context),
    );
  }
}
