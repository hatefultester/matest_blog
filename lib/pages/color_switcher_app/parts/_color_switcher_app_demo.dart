part of '../color_switcher_page.dart';

class _ColorSwitcherAppDemo extends StatelessWidget {
  const _ColorSwitcherAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: PhoneSimulatorWidget(
        app: ColorSwitcherApp(),
      ),
    );
  }
}
