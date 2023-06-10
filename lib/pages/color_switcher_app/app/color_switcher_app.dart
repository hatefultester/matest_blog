import 'package:flutter/material.dart';
import 'color_switcher_screen.dart';

class ColorSwitcherApp extends StatelessWidget {
  const ColorSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorSwitcherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const String colorSwitcherAppCode = """
import 'package:flutter/material.dart';
import 'color_switcher_screen.dart';

class ColorSwitcherApp extends StatelessWidget {
  const ColorSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorSwitcherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
""";
