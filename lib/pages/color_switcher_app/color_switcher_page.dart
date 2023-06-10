import 'package:fluent_ui/fluent_ui.dart';
import 'app/color_switcher_button.dart';
import 'app/color_switcher_config.dart';
import 'app/color_switcher_screen.dart';
import '../../widgets/code_snippet/code_snippet_widget.dart';
import '../../widgets/phone_simulator/phone_simulator_widget.dart';
import 'app/color_switcher_app.dart';

part 'parts/_color_switcher_app_code.dart';

part 'parts/_color_switcher_app_demo.dart';

part 'parts/_color_switcher_app_introduction.dart';

part 'parts/_color_switcher_app_page_config.dart';

class ColorSwitcherPage extends StatefulWidget {
  const ColorSwitcherPage({Key? key}) : super(key: key);

  @override
  State<ColorSwitcherPage> createState() => _ColorSwitcherPageState();
}

class _ColorSwitcherPageState extends State<ColorSwitcherPage> {
  final List<Tab> _tabs = _colorSwitcherAppPageTabs;
  int _currentIndex = 0;

  _onReorder(int oldIndex, int newIndex) {
    setState(
      () {
        if (oldIndex < newIndex) {
          newIndex -= 1;
        }
        final item = _tabs.removeAt(oldIndex);

        _tabs.insert(
          newIndex,
          item,
        );

        if (_currentIndex == newIndex) {
          _currentIndex = oldIndex;
        } else if (_currentIndex == oldIndex) {
          _currentIndex = newIndex;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TabView(
      tabs: _tabs,
      currentIndex: _currentIndex,
      onChanged: (index) => setState(() => _currentIndex = index),
      tabWidthBehavior: TabWidthBehavior.equal,
      closeButtonVisibility: CloseButtonVisibilityMode.never,
      showScrollButtons: true,
      onNewPressed: null,
      onReorder: _onReorder,
    );
  }
}
