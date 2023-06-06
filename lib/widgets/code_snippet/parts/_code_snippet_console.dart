part of '../code_snippet_widget.dart';

class _CodeSnippetConsole extends StatefulWidget {
  final bool isConsoleVisible;
  final String consoleResult;

  const _CodeSnippetConsole(
      {Key? key, required this.isConsoleVisible, required this.consoleResult})
      : super(key: key);

  @override
  State<_CodeSnippetConsole> createState() => _CodeSnippetConsoleState();
}

class _CodeSnippetConsoleState extends State<_CodeSnippetConsole> {
  bool showProgressViewAnimation = true;

  @override
  Widget build(BuildContext context) {
    if (showProgressViewAnimation &&
        widget.isConsoleVisible &&
        widget.consoleResult.isNotEmpty) _animationStopper();

    return Visibility(
      visible: widget.isConsoleVisible && widget.consoleResult.isNotEmpty,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: a11yDarkTheme['root']!.backgroundColor,
          borderRadius: kBaseRadius,
        ),
        child: showProgressViewAnimation
            ? const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ProgressBar(),
                  ),
                ),
              )
            : HighlightView(
                widget.consoleResult,
                language: 'console',
                theme: a11yDarkTheme,
                textStyle: kCodeTextStyle,
              ),
      ),
    );
  }

  Future<void> _animationStopper() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1500,
      ),
    );
    setState(() {
      showProgressViewAnimation = false;
    });
  }
}
