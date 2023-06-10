part of '../code_snippet_widget.dart';

class _CodeSnippetContent extends StatelessWidget {
  final String code;

  const _CodeSnippetContent({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyPadding.codePadding,
      decoration: BoxDecoration(
        color: kDraculaBackground,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.topLeft,
      child: HighlightView(
        code,
        language: 'dart',
        theme: kDraculaTheme,
        textStyle: Theme.of(context).textTheme.bodyLarge!.merge(
              const TextStyle(
                fontFamily: 'FiraCode',
              ),
            ),
      ),
    );
  }
}
