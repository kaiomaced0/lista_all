import 'package:flutter/material.dart';
import 'package:lista_all/components/appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/components/home_drawer.dart';

class AdmHome_page extends StatelessWidget {
  const AdmHome_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _AdmHome_page(title: 'Adm Home'),
    );
  }
}

class _AdmHome_page extends StatefulWidget {
  const _AdmHome_page({super.key, required this.title});

  final String title;

  @override
  State<_AdmHome_page> createState() => AdmHome_pageState();
}

class AdmHome_pageState extends State<_AdmHome_page> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appBar("Adm Home", context),
      body: HomePageContent(),
    );
  }
}
