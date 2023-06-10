import 'package:fluent_ui/fluent_ui.dart';

extension ResponsiveExtension on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width <= 500;

  bool get isTablet =>
      MediaQuery.of(this).size.width < 1024 &&
          MediaQuery.of(this).size.width >= 600;

  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;
}
