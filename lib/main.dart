import 'package:flutter/material.dart';
import 'package:tap_tap_money_counter/data.dart';
import 'package:tap_tap_money_counter/screens/tap_tap_counter_screen.dart';

void main() {
  runApp(const AppWrapper());
}

class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Palette.primary,
        ),
      ),
      home: const Scaffold(
        body: TapTapCounterScreen(),
      ),
    );
  }
}
