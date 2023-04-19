import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class ForgotPass1_page extends StatelessWidget {
  const ForgotPass1_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _ForgotPass1_page(title: 'Forgot Pass'),
    );
  }
}

class _ForgotPass1_page extends StatefulWidget {
  const _ForgotPass1_page({super.key, required this.title});

  final String title;

  @override
  State<_ForgotPass1_page> createState() => ForgotPass1_pageState();
}

class ForgotPass1_pageState extends State<_ForgotPass1_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Forgot Pass"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
