import 'package:flutter/material.dart';

class CustomColors {
  Color _colorMain = Color(0xff430A66);
  Color _colorCustom1 = Color.fromARGB(255, 122, 122, 231);
  Color _colorCustom2 = Color.fromARGB(255, 176, 161, 255);

  Color getColorMain() {
    return _colorMain;
  }

  Color getColorCustom1() {
    return _colorCustom1;
  }

  Color getColorCustom2() {
    return _colorCustom2;
  }
}
