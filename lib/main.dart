import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:matest_blog/sample.dart';
import 'package:matest_blog/widgets/code_snippet/code_snippet_widget.dart';
import 'mini_apps/color_switcher_app/color_switcher_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPageIndex = 0;

  String title = 'Fluent UI Demo';

  List<NavigationPaneItem> navigationItems = [
    PaneItem(
      icon: const Icon(Icons.home),
      title: const Text('Home'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CodeSnippetWidget(
            code: sampleCode,
          ),
        ),
      ),
    ),
    PaneItem(
      icon: const Icon(Icons.favorite),
      title: const Text('Favorites'),
      body: const ColorSwitcherPage(),
    ),
    PaneItem(
      icon: const Icon(Icons.settings),
      title: const Text('Settings'),
      body: const SizedBox(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      themeMode: ThemeMode.dark,
      theme: FluentThemeData(
        animationCurve: Curves.linear,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        appBar: NavigationAppBar(
          title: Text(title),
          automaticallyImplyLeading: false,
        ),
        pane: NavigationPane(
          displayMode: PaneDisplayMode.compact,
          selected: _currentPageIndex,
          onChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          items: navigationItems,
        ),
      ),
    );
  }
}
