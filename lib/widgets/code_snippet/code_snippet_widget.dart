import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/a11y-dark.dart';

import '../../config/constants.dart';
import '../../config/dracula_code_theme.dart';

part 'parts/_code_snippet_console.dart';

part 'parts/_code_snippet_header.dart';

part 'parts/_code_snippet_content.dart';

class CodeSnippetWidget extends StatefulWidget {
  final String title;
  final String code;
  final bool isRunnable;
  final String Function()? onRun;

  const CodeSnippetWidget(
      {Key? key,
      required this.code,
      this.title = 'Sample code',
      this.isRunnable = false,
      this.onRun})
      : super(key: key);

  @override
  State<CodeSnippetWidget> createState() => _CodeSnippetWidgetState();
}

class _CodeSnippetWidgetState extends State<CodeSnippetWidget> {
  bool isRunningActive = false;
  String consoleLogResult = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kContentPadding,
      child: Column(
        children: [
          _CodeSnippetHeader(
            title: widget.title,
            onRunClicked: widget.isRunnable ? _onRunCallback : null,
            isConsoleVisible: isRunningActive,
          ),
          _CodeSnippetContent(
            code: widget.code,
          ),
          _CodeSnippetConsole(
            isConsoleVisible: isRunningActive,
            consoleResult: consoleLogResult,
          ),
        ],
      ),
    );
  }

  _onRunCallback() {
    setState(
      () {
        final result = widget.onRun?.call();
        consoleLogResult = result ?? '';
        isRunningActive = !isRunningActive;
      },
    );
  }
}
