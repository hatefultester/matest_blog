part of '../about_me_page.dart';

ItemScrollController _scrollController = ItemScrollController();

const _scrollDuration = Duration(seconds: 1);

void _jumpTo(int index) => _scrollController.scrollTo(
      index: index,
      duration: _scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: 0,
    );

List<_AboutMeInfo> _aboutMeInfoListItems = [
  const _AboutMeInfo(
    index: 1,
    asset: 'assets/images/me.jpg',
    title: 'Flutter developer',
    description:
        'Passionate about creating cross-platform mobile apps with Flutter.',
  ),
  const _AboutMeInfo(
    index: 2,
    asset: 'assets/images/tester.jpg',
    title: 'Software Tester',
    description:
        'Experienced and critical thinker that ensures the quality of software delivery.',
  ),
  const _AboutMeInfo(
    index: 3,
    asset: 'assets/images/cuber.png',
    title: 'Speed Cuber',
    description:
        'Holder of 13 Czech records in Rubik\'s Cube, showing passion and dedication.',
  ),
];

class _AboutMeInfo {
  final String title;
  final String asset;
  final String description;
  final int index;

  const _AboutMeInfo({
    required this.index,
    required this.asset,
    required this.title,
    required this.description,
  });
}

List<List<Widget>> _scrollableListItems = [
  [
    const SizedBox(
      height: 20,
    ),
    Wrap(
      alignment: WrapAlignment.center,
      spacing: 4,
      children: [
        for (int i = 0; i < _aboutMeInfoListItems.length; i++)
          _AboutMeInfoTile(
            item: _aboutMeInfoListItems[i],
          ),
      ],
    ),
    const SizedBox(
      height: 10,
    ),
    const Divider(),
  ],
  [
    const SizedBox(
      height: 10,
    ),
   const _AboutMeDev(),
    const SizedBox(
      height: 10,
    ),
    const Divider(),
  ],
  [
    const SizedBox(
      height: 10,
    ),
    const _AboutMeTester(),
    const SizedBox(
      height: 10,
    ),
    const Divider(),
  ],
  [
    const SizedBox(
      height: 10,
    ),
    const _AboutMeCuber(),
    const SizedBox(
      height: 10,
    ),
    const Divider(),
    const SizedBox(
      height: 10,
    ),
  ],
];
