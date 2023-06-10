import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

import '../../config/dracula_code_theme.dart';
import '../../config/padding.dart';

part 'parts/_code_snippet_header.dart';

part 'parts/_code_snippet_content.dart';

part 'parts/_code_snippet_copy_button.dart';

part 'parts/_code_snippet_section.dart';

part 'parts/_code_snippet_config.dart';

class CodeSnippetWidget extends StatelessWidget {
  final String? sectionTitle;
  final String? sectionDescription;
  final String codeTitle;
  final String code;

  const CodeSnippetWidget({
    Key? key,
    required this.code,
    this.codeTitle = _placeholderCodeTitle,
    this.sectionTitle,
    this.sectionDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (sectionTitle != null && sectionDescription != null)
            _CodeSnippetSection(
              title: sectionTitle ?? '',
              description: sectionDescription ?? '',
            ),
          const SizedBox(height: 16),
          Expander(
            trailing: _CodeSnippetCopyButton(
              onPressed: _onCopyCodeClicked,
            ),
            header: _CodeSnippetHeader(
              title: codeTitle,
            ),
            content: _CodeSnippetContent(
              code: code,
            ),
          ),
        ],
      ),
    );
  }

  _onCopyCodeClicked() {
    Clipboard.setData(
      ClipboardData(
        text: _getCodeSnippetCopyText(
          codeTitle: codeTitle,
          code: code,
        ),
      ),
    );
  }
}
