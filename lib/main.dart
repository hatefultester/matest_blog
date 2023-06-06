import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:matest_blog/sample.dart';
import 'package:matest_blog/widgets/code_snippet/code_snippet_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Fluent UI Demo';
    List<NavigationPaneItem> navigationItems = [
      PaneItem(
        icon: const Icon(Icons.home),
        title: const Text('Home'),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CodeSnippetWidget(
              code: sampleCode,
              onRun: () => sampleCodeResult,
            ),
          ),
        ),
      ),
      PaneItem(
        icon: const Icon(Icons.favorite),
        title: const Text('Favorites'),
        body: const SizedBox(),
      ),
      PaneItem(
        icon: const Icon(Icons.settings),
        title: const Text('Settings'),
        body: const SizedBox(),
      ),
    ];

    return FluentApp(
      themeMode: ThemeMode.dark,
      theme: FluentThemeData(
        animationCurve: Curves.linear,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        appBar: const NavigationAppBar(
          title: Text(title),
          automaticallyImplyLeading: false,
        ),
        pane: NavigationPane(items: navigationItems),
      ),
    );
  }
}
