import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/components/bnb.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/components/home_drawer.dart';
import 'package:lista_all/components/appbar.dart';

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
      appBar: appBar("Favoritos", context),
      body: HomePageContent(),
      bottomNavigationBar: bnb(context),
      drawer: Home_drawer(context),
    );
  }
}
