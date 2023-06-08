
import 'dart:math';

import 'package:flutter/material.dart';

import 'color_switcher_button.dart';
import 'color_switcher_config.dart';

class ColorSwitcherScreen extends StatefulWidget {
  const ColorSwitcherScreen({
    Key? key,
  }) : super(
    key: key,
  );

  @override
  State<ColorSwitcherScreen> createState() => _ColorSwitcherScreenState();
}

class _ColorSwitcherScreenState extends State<ColorSwitcherScreen> {
  int _startIndex = Random().nextInt(
    colors.length,
  );

  Color get _color => colors[_startIndex];

  int get _length => colors.length;

  bool _isSelected(int index) => _startIndex == index;

  Color _getColor(int index) => colors[index];

  _setColor(int index) => setState(
        () {
      _startIndex = index;
    },
  );

  @override
  Widget build(
      BuildContext context,
      ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: const Text(
          'App Switcher app',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.refresh_outlined,
              ),
              onPressed: () {
                setState(
                      () {
                    _startIndex = Random().nextInt(
                      colors.length,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _length,
        itemBuilder: (
            context,
            index,
            ) {
          return ColorSwitcherButton(
            color: _getColor(
              index,
            ),
            isSelected: _isSelected(
              index,
            ),
            onPressed: () => _setColor(
              index,
            ),
          );
        },
      ),
    );
  }
}

const String colorSwitcherScreenCode = """

import 'dart:math';

import 'package:flutter/material.dart';

import 'color_switcher_button.dart';
import 'color_switcher_config.dart';

class ColorSwitcherScreen extends StatefulWidget {
  const ColorSwitcherScreen({
    Key? key,
  }) : super(
    key: key,
  );

  @override
  State<ColorSwitcherScreen> createState() => _ColorSwitcherScreenState();
}

class _ColorSwitcherScreenState extends State<ColorSwitcherScreen> {
  int _startIndex = Random().nextInt(
    colors.length,
  );

  Color get _color => colors[_startIndex];

  int get _length => colors.length;

  bool _isSelected(int index) => _startIndex == index;

  Color _getColor(int index) => colors[index];

  _setColor(int index) => setState(
        () {
      _startIndex = index;
    },
  );

  @override
  Widget build(
      BuildContext context,
      ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: const Text(
          'App Switcher app',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.refresh_outlined,
              ),
              onPressed: () {
                setState(
                      () {
                    _startIndex = Random().nextInt(
                      colors.length,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _length,
        itemBuilder: (
            context,
            index,
            ) {
          return ColorSwitcherButton(
            color: _getColor(
              index,
            ),
            isSelected: _isSelected(
              index,
            ),
            onPressed: () => _setColor(
              index,
            ),
          );
        },
      ),
    );
  }
}
""";