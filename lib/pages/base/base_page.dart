import 'package:fluent_ui/fluent_ui.dart';
import 'package:matest_blog/pages/about/about_site_page.dart';
import 'package:matest_blog/pages/accounts/accounts_page.dart';
import 'package:matest_blog/pages/me/about_me_page.dart';
import 'package:matest_blog/pages/services/services_page.dart';

import '../../config/app_theme.dart';

class BasePage extends StatefulWidget {
  final int initial;

  const BasePage({super.key, required this.initial});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  AppTheme appTheme = AppTheme();
  late int _currentPageIndex;

  @override
  initState() {
    super.initState();
    _currentPageIndex = widget.initial;
  }

  List<NavigationPaneItem> navigationFooterItems = [
    PaneItem(
      icon: const Icon(
        FluentIcons.activity_feed,
      ),
      title: const Text(
        'Contact me',
      ),
      body: const SizedBox(),
    ),
    PaneItem(
      icon: const Icon(
        FluentIcons.info_solid,
      ),
      title: const Text(
        'Resources',
      ),
      body: const ResourcesPage(),
    ),
  ];

  List<NavigationPaneItem> navigationItems = [
    PaneItem(
      icon: const Icon(
        FluentIcons.account_management,
      ),
      title: const Text(
        'Portfolio',
      ),
      body: const Portfolio(),
    ),
    PaneItemHeader(
      header: const Text(
        'Personal projects',
      ),
    ),
    PaneItem(
      icon: const Icon(
        FluentIcons.project_collection,
      ),
      title: const Text(
        'Projects',
      ),
      body: const ProjectsPage(),
    ),
    PaneItemHeader(
      header: const Text(
        'My Blog',
      ),
    ),
    PaneItem(
      icon: const Icon(
        FluentIcons.service_activity,
      ),
      title: const Text(
        'Services',
      ),
      body: const ServicesPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      themeMode: appTheme.mode,
      darkTheme: FluentThemeData(
        brightness: Brightness.dark,
        accentColor: appTheme.color,
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen(context) ? 2.0 : 0.0,
        ),
      ),
      theme: FluentThemeData(
        accentColor: appTheme.color,
        visualDensity: VisualDensity.standard,
        focusTheme: FocusThemeData(
          glowFactor: is10footScreen(context) ? 2.0 : 0.0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: NavigationView(
        appBar: NavigationAppBar(
          title: const Text("< Matest - Matěj Grohmann />"),
          automaticallyImplyLeading: false,
          actions: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ToggleSwitch(
                    content: const Text('Dark theme'),
                    checked: appTheme.mode == ThemeMode.dark,
                    onChanged: _toggleThemeModeSwitch),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
        ),
        pane: NavigationPane(
          displayMode: PaneDisplayMode.minimal,
          header: const Text(
            'Choose your destination',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          selected: _currentPageIndex,
          onChanged: _handleOnChanged,
          items: navigationItems,
          footerItems: navigationFooterItems,
        ),
      ),
    );
  }

  _handleOnChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  _toggleThemeModeSwitch(bool value) {
    setState(() {
      if (value) {
        appTheme.mode = ThemeMode.dark;
      } else {
        appTheme.mode = ThemeMode.light;
      }
    });
  }
}
