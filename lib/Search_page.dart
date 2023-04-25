import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';
import 'package:lista_all/pages/home_widgets/home_appbar.dart';
import 'package:lista_all/pages/home_widgets/home_content.dart';
import 'package:lista_all/pages/home_widgets/home_drawer.dart';

class Search_page extends StatelessWidget {
  const Search_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista_All',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const _Search_page(title: 'Search'),
    );
  }
}

class _Search_page extends StatefulWidget {
  const _Search_page({super.key, required this.title});

  final String title;

  @override
  State<_Search_page> createState() => Search_pageState();
}

class Search_pageState extends State<_Search_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHome_appbar("Search", context),
      body: HomePageContent(),
      bottomNavigationBar: getHome_bnb(context),
    );
  }
}
