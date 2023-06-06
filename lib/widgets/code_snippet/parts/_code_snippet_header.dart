part of '../code_snippet_widget.dart';

class _CodeSnippetHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onRunClicked;

  final bool isConsoleVisible;

  const _CodeSnippetHeader({Key? key, required this.title, this.onRunClicked, required this.isConsoleVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: kTitleTextStyle),
          Visibility(
            visible: onRunClicked != null,
            child: HyperlinkButton(
              onPressed: onRunClicked,
              child: Text(
                isConsoleVisible ? "Hide result" : "Show result"
              ),
            ),
          ),
        ],
      ),
    );
  }
}
