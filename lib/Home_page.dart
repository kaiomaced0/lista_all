import 'package:flutter/material.dart';

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
      drawer: Drawer(),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(),
      body: Container(),
    );
  }
}
