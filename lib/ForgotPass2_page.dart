import 'package:flutter/material.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home_widgets/home_fab.dart';

class ForgotPass2_page extends StatelessWidget {
  const ForgotPass2_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _ForgotPass2_page(title: 'Forgot Pass'),
    );
  }
}

class _ForgotPass2_page extends StatefulWidget {
  const _ForgotPass2_page({super.key, required this.title});

  final String title;

  @override
  State<_ForgotPass2_page> createState() => ForgotPass2_pageState();
}

class ForgotPass2_pageState extends State<_ForgotPass2_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getHome_drawer(),
      appBar: getHome_appbar("Forgot_Pass"),
      floatingActionButton: getFab(),
      body: HomePageContent(),
    );
  }
}
