import 'package:flutter/material.dart';
import 'package:lista_all/colors/custom_colors.dart';

class HomeListItems extends StatefulWidget {
  const HomeListItems({super.key});

  @override
  State<HomeListItems> createState() => _HomeListItemsState();
}

class _HomeListItemsState extends State<HomeListItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 10,
            color: CustomColors().getColorMain(),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: []
              ),
          ),
        ],
      ),
    );
  }
}
