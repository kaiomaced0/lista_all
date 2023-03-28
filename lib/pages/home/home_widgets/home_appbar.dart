import 'package:flutter/material.dart';

AppBar getHome_appbar() {
  return AppBar(
    title: const Text('Home'),
    centerTitle: true,
    backgroundColor: const Color(0xff430A66),
    actions: [
      IconButton(
        icon: const Icon(Icons.more_vert_rounded,
                  color: Colors.white,
        ),
        onPressed: () {

        },

      ), 

    ],
  );
}
