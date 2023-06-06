part of '../code_snippet_widget.dart';

class _CodeSnippetContent extends StatelessWidget {
  final String code;

  const _CodeSnippetContent({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kContentPadding,
      decoration: BoxDecoration(
        color: kDraculaBackground,
        borderRadius: kBaseRadius,
      ),
      alignment: Alignment.topLeft,
      child: HighlightView(
        code,
        language: 'dart',
        theme: kDraculaTheme,
        textStyle: kCodeTextStyle,
      ),
    );
  }
}
