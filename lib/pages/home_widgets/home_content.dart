// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

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
            CustomColors().getColorCustom1(),
            CustomColors().getColorCustom2()
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: ListView(
        children: [
          Container(),
          Container(
            color: Colors.white,
            child: Text("A"),
          ),
          Container(
            color: Colors.white,
            child: Text("A"),
          ),
          Container(
            color: Colors.white,
            child: Text("A"),
          ),
          Container(
            color: Colors.white,
            child: Text("A"),
          ),
        ],
      ),
    );
  }
}
