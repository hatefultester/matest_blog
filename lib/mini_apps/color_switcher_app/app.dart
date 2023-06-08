import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as Material;

import '../../widgets/phone_simulator/phone_simulator_widget.dart';

class ColorSwitcherApp extends StatelessWidget {
  const ColorSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      home: _HomeWidget(),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
    );
  }
}

class _HomeWidget extends StatefulWidget {
  const _HomeWidget({Key? key}) : super(key: key);

  @override
  State<_HomeWidget> createState() => _HomeWidgetState();
}

List<Color> colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.grey,
  Colors.orange,
  Colors.purple,
  Colors.yellow
];

class _HomeWidgetState extends State<_HomeWidget> {
  int _startIndex = Random().nextInt(colors.length);

  Color get _color => colors[_startIndex];

  int get _length => colors.length;

  _getColor(int index) => colors[index];

  _setColor(int index) => setState(() {
        _startIndex = index;
      });

  @override
  Widget build(BuildContext context) {
    return Material.Scaffold(
      appBar: Material.AppBar(
        backgroundColor: _color,
        title: const Text('App Switcher app'),
      ),
      body: Column(
        children: [
          const PhoneSimulatorWidget(
            app: ColorSwitcherApp(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _length,
              itemBuilder: (context, index) {
                return Center(
                  child: TextButton(
                    onPressed: () {
                      _setColor(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(32.0),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        color: _getColor(index),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
