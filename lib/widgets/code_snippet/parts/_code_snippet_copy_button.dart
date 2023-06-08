part of '../code_snippet_widget.dart';

class _CodeSnippetCopyButton extends StatefulWidget {
  final Function() onPressed;

  const _CodeSnippetCopyButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<_CodeSnippetCopyButton> createState() => _CodeSnippetCopyButtonState();
}

class _CodeSnippetCopyButtonState extends State<_CodeSnippetCopyButton> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ToggleButton(
        checked: checked,
        onChanged: _handleOnChanged,
        child: checked
            ? const Center(
                child: Icon(FluentIcons.check_mark),
              )
            : const Text(
                'Copy',
              ),
      ),
    );
  }

  _handleOnChanged(bool value) {
    checked
        ? null
        : setState(
          () {
        widget.onPressed.call();
        checked = value;
      },
    );
  }
}
