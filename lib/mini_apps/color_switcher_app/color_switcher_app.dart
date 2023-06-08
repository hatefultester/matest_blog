import 'dart:math';
import 'package:flutter/material.dart';

class ColorSwitcherApp extends StatelessWidget {
  const ColorSwitcherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _HomeWidget(),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
    );
  }
}

class _HomeWidget extends StatefulWidget {
  const _HomeWidget({
    Key? key,
  }) : super(
          key: key,
        );

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
  int _startIndex = Random().nextInt(
    colors.length,
  );

  Color get _color => colors[_startIndex];

  int get _length => colors.length;

  bool _isSelected(int index) => _startIndex == index;

  Color _getColor(int index) => colors[index];

  _setColor(int index) => setState(() {
        _startIndex = index;
      });

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
          return Container(
            color: _isSelected(
              index,
            )
                ? Colors.black12
                : Colors.transparent,
            child: Center(
              child: TextButton(
                onPressed: () {
                  _setColor(
                    index,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(
                    32.0,
                  ),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: _getColor(
                      index,
                    ),
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
