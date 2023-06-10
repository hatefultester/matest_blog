part of '../color_switcher_page.dart';

List<Tab> _colorSwitcherAppPageTabs = [
  Tab(
    text: const Text('Code'),
    semanticLabel: 'Code page',
    icon: const Icon(
      FluentIcons.code,
    ),
    body: const _ColorSwitcherAppCode(),
    onClosed: null,
  ),
  Tab(
    text: const Text('Demo'),
    semanticLabel: 'Show live demo',
    icon: const FlutterLogo(),
    body: const _ColorSwitcherAppDemo(),
    onClosed: null,
  ),
];

List<CodeSnippetWidget> _colorSwitcherAppCodeSnippetsContent = [
  const CodeSnippetWidget(
    sectionTitle: 'Step 1: Create a ColorSwitcherApp',
    sectionDescription: 'This is the main widget of the app.',
    codeTitle: 'color_switcher_app.dart',
    code: colorSwitcherAppCode,
  ),
  const CodeSnippetWidget(
    sectionTitle: 'Step 2: Create a ColorSwitcherConfig file',
    sectionDescription:
        'This file contains the configuration of the app, such as the colors and the default color.',
    codeTitle: 'color_switcher_config.dart',
    code: colorSwitcherConfigCode,
  ),
  const CodeSnippetWidget(
    sectionTitle: 'Step 3: Create a button to switch colors',
    sectionDescription: 'This button will switch the color of the app.',
    codeTitle: 'color_switcher_button.dart',
    code: colorSwitcherButtonCode,
  ),
  const CodeSnippetWidget(
    sectionTitle: 'Step 4: Create a ColorSwitcherScreen',
    sectionDescription: 'This is the screen that will be displayed.',
    codeTitle: 'color_switcher_screen.dart',
    code: colorSwitcherScreenCode,
  ),
];
