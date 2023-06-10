import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as Material;
import 'package:matest_blog/config/responsive_context_extension.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../base/base_page.dart';

part 'parts/_about_me_config.dart';
part 'parts/_about_me_tile.dart';
part 'parts/_about_me_tester.dart';
part 'parts/_about_me_cuber.dart';
part 'parts/_about_me_dev.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) :  super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: _scrollableListItems.length,
      itemBuilder: (context, index) => Column(children: _scrollableListItems[index]),
      itemScrollController: _scrollController,
    );
  }

  _handleContactMeClicked(BuildContext context) {
    Navigator.of(context).pushReplacement(
      FluentPageRoute(
        builder: (context) => const BasePage(
          initial: 3,
        ),
      ),
    );
  }
}

