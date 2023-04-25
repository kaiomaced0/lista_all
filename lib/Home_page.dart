import 'package:flutter/material.dart';
import 'package:lista_all/Carrinho_page.dart';
import 'package:lista_all/Conta_page.dart';
import 'package:lista_all/Login_page.dart';
import 'package:lista_all/Search_page.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';
import 'package:lista_all/colors/custom_colors.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Home_page(title: 'Home'),
    );
  }
}

class _Home_page extends StatefulWidget {
  const _Home_page({super.key, required this.title});

  final String title;

  @override
  State<_Home_page> createState() => Home_pageState();
}

class Home_pageState extends State<_Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Home_drawer(),
      appBar: getHome_appbar("Home"),
      body: HomePageContent(),
      bottomNavigationBar: getHome_bnb(context),
    );
  }
}
