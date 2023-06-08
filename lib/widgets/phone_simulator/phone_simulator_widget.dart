import 'package:fluent_ui/fluent_ui.dart';

part 'parts/_phone_simulator_box.dart';

part 'parts/_phone_simulator_phone.dart';
part 'parts/_phone_simulator_menu.dart';

class PhoneSimulatorWidget extends StatelessWidget {
  final Widget app;

  const PhoneSimulatorWidget({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _PhoneSimulatorBox(
      child: _PhoneSimulatorPhone(
        child: app,
      ),
    );
  }
}
