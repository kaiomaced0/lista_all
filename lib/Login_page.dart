import 'package:flutter/material.dart';
import 'package:lista_all/pages/home/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home/home_widgets/home_content.dart';
import 'package:lista_all/pages/home/home_widgets/home_drawer.dart';
import 'package:lista_all/pages/home/home_widgets/home_fab.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Login_page(title: 'Home'),
    );
  }
}

class _Login_page extends StatefulWidget {
  const _Login_page({super.key, required this.title});

  final String title;

  @override
  State<_Login_page> createState() => Login_pageState();
}

class Login_pageState extends State<_Login_page> {
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
