// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_all/pages/home/home_widgets/home_list_items.dart';
import 'package:lista_all/pages/home/home_widgets/home_list_model.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // ignore: prefer_const_constructors
            Color.fromARGB(255, 134, 134, 152),
            Color.fromARGB(255, 176, 161, 255),
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Text("A"),
          ),
        ],
      ),
    );
  }
}
