import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

import '../../config/constants.dart';
import '../../config/dracula_code_theme.dart';

part 'parts/_code_snippet_header.dart';

part 'parts/_code_snippet_content.dart';

part 'parts/_code_snippet_copy_button.dart';

class CodeSnippetWidget extends StatelessWidget {
  final String title;
  final String code;

  const CodeSnippetWidget({
    Key? key,
    required this.code,
    this.title = 'Sample code',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Expander(
        trailing: _CodeSnippetCopyButton(
          onPressed: _onCopyCodeClicked,
        ),
        header: _CodeSnippetHeader(
          title: title,
        ),
        content: _CodeSnippetContent(
          code: code,
        ),
      ),
    );
  }

  _onCopyCodeClicked() {
    Clipboard.setData(
      ClipboardData(
        text: '''
/*** 
*** this code was copied from matest_blog site 
* https://matest.web.app
** time copied: ${DateTime.now().toString()}
*** original code file name: $title
****/
 
$code
''',
      ),
    );
  }
}
