import 'package:fluent_ui/fluent_ui.dart';
import 'app/color_switcher_button.dart';
import 'app/color_switcher_config.dart';
import 'app/color_switcher_screen.dart';
import '../../widgets/code_snippet/code_snippet_widget.dart';
import '../../widgets/phone_simulator/phone_simulator_widget.dart';

import 'app/color_switcher_app.dart';

class ColorSwitcherPage extends StatefulWidget {
  const ColorSwitcherPage({Key? key}) : super(key: key);

  @override
  State<ColorSwitcherPage> createState() => _ColorSwitcherPageState();
}

class _ColorSwitcherPageState extends State<ColorSwitcherPage> {
  List<Tab> tabs = [
    Tab(
      text: const Text('Code'),
      semanticLabel: 'Code page',
      icon: const Icon(
        FluentIcons.code,
      ),
      body: ListView(
        children: const [
          CodeSnippetWidget(
            title: 'color_switcher_app.dart',
            code: colorSwitcherAppCode,
          ),
          CodeSnippetWidget(
            title: 'color_switcher_config.dart',
            code: colorSwitcherConfigCode,
          ),
          CodeSnippetWidget(
            title: 'color_switcher_button.dart',
            code: colorSwitcherButtonCode,
          ),
          CodeSnippetWidget(
            title: 'color_switcher_screen.dart',
            code: colorSwitcherScreenCode,
          ),
        ],
      ),
      onClosed: null,
    ),
    Tab(
      text: const Text('Demo'),
      semanticLabel: 'Show live demo',
      icon: const FlutterLogo(),
      body: const SingleChildScrollView(
        child: PhoneSimulatorWidget(
          app: ColorSwitcherApp(),
        ),
      ),
      onClosed: null,
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabView(
      tabs: tabs,
      currentIndex: currentIndex,
      onChanged: (index) => setState(() => currentIndex = index),
      tabWidthBehavior: TabWidthBehavior.equal,
      closeButtonVisibility: CloseButtonVisibilityMode.never,
      showScrollButtons: true,
      onNewPressed: null,
      onReorder: (oldIndex, newIndex) {
        setState(
          () {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final item = tabs.removeAt(oldIndex);
            tabs.insert(
              newIndex,
              item,
            );

            if (currentIndex == newIndex) {
              currentIndex = oldIndex;
            } else if (currentIndex == oldIndex) {
              currentIndex = newIndex;
            }
          },
        );
      },
    );
  }
}
