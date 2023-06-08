part of '../phone_simulator_widget.dart';

const double _width = 1170 / 3;
const double _height = 2532 / 3;

class _PhoneSimulatorBox extends StatefulWidget {
  final Widget child;

  const _PhoneSimulatorBox({Key? key, required this.child}) : super(key: key);

  @override
  _PhoneSimulatorBoxState createState() => _PhoneSimulatorBoxState();
}

class _PhoneSimulatorBoxState extends State<_PhoneSimulatorBox> {
  double _scaleFactor = 0.8;
  bool _portraitOrientation = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedContainer(
          width: _portraitOrientation ? _width : _height,
      duration: const Duration(milliseconds: 400,),
          child: _PhoneSimulatorMenu(
            onScaleFactorChanged: (value) {
              setState(() {
                _scaleFactor = value;
              });
            },
            onOrientationChanged: () {
              setState(() {
                _portraitOrientation = !_portraitOrientation;
              });
            }, selectedScaleFactor: _scaleFactor,
          ),
        ),
        AnimatedContainer(
          duration: const Duration(
            milliseconds: 800,
          ),
          width: (_portraitOrientation ? _width : _height) * _scaleFactor,
          height: (_portraitOrientation ? _height : _width) * _scaleFactor,
          child: widget.child,
        ),
      ],
    );
  }
}
