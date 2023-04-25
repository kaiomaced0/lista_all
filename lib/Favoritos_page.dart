import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';

class Favoritos_page extends StatelessWidget {
  const Favoritos_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Favoritos_page(title: 'Favoritos'),
    );
  }
}

class _Favoritos_page extends StatefulWidget {
  const _Favoritos_page({super.key, required this.title});

  final String title;

  @override
  State<_Favoritos_page> createState() => Favoritos_pageState();
}

class Favoritos_pageState extends State<_Favoritos_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHome_appbar("Favoritos", context),
      body: HomePageContent(),
      bottomNavigationBar: getHome_bnb(context),
      drawer: Home_drawer(),
    );
  }
}
