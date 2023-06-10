import 'package:flutter/material.dart';

class ColorSwitcherButton extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final bool isSelected;

  const ColorSwitcherButton({
    Key? key,
    required this.onPressed,
    required this.isSelected,
    required this.color,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.black12 : Colors.transparent,
      child: Center(
        child: TextButton(
          onPressed: () {
            onPressed.call();
          },
          child: Container(
            margin: const EdgeInsets.all(
              32.0,
            ),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const String colorSwitcherButtonCode = """
import 'package:flutter/material.dart';

class ColorSwitcherButton extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final bool isSelected;

  const ColorSwitcherButton({
    Key? key,
    required this.onPressed,
    required this.isSelected,
    required this.color,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected ? Colors.black12 : Colors.transparent,
      child: Center(
        child: TextButton(
          onPressed: () {
            onPressed.call();
          },
          child: Container(
            margin: const EdgeInsets.all(
              32.0,
            ),
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

""";