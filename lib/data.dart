import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor primary = Colors.orange;
  static const MaterialColor secondary = Colors.lightGreen;
  static Color text = const Color.fromARGB(255, 30, 30, 30);
  static Color subtext = const Color.fromARGB(255, 90, 90, 90);
  static Color bg = Colors.white;
  static Color box = const Color.fromARGB(255, 210, 210, 210);
  static Color topbox = const Color.fromARGB(255, 230, 230, 230);

  static setDarkmode(bool status) {
    if (status) {
      Palette.text = Colors.white;
      Palette.bg = const Color.fromARGB(255, 30, 30, 30);
      Palette.box = const Color.fromARGB(255, 69, 69, 69);
      Palette.subtext = const Color.fromARGB(255, 190, 190, 190);
      Palette.topbox = const Color.fromARGB(255, 45, 45, 45);
    } else {
      Palette.text = const Color.fromARGB(255, 30, 30, 30);
      Palette.bg = Colors.white;
      Palette.box = const Color.fromARGB(255, 210, 210, 210);
      Palette.subtext = const Color.fromARGB(255, 90, 90, 90);
      Palette.topbox = const Color.fromARGB(255, 230, 230, 230);
    }
  }
}
