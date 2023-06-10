part of '../code_snippet_widget.dart';

String _getCodeSnippetCopyText({
  required String codeTitle,
  required String code,
}) => '''
/*** 
*** this code was copied from matest_blog site 
* https://matest.web.app
** time copied: ${DateTime.now().toString()}
*** original code file name: $codeTitle
****/
 
$code
''';

const String _placeholderCodeTitle = 'sample code';