part of '../color_switcher_page.dart';

class _ColorSwitcherAppIntroduction extends StatelessWidget {
  const _ColorSwitcherAppIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _colorSwitcherAppCodeSnippetsContent.length,
      itemBuilder: (context, index) {
        return _colorSwitcherAppCodeSnippetsContent[index];
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      padding: const EdgeInsets.all(8),
    );
  }
}
