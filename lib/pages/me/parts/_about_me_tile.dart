part of '../about_me_page.dart';

class _AboutMeInfoTile extends StatefulWidget {
  final _AboutMeInfo item;

  const _AboutMeInfoTile({Key? key, required this.item}) : super(key: key);

  @override
  State<_AboutMeInfoTile> createState() => _AboutMeInfoTileState();
}

class _AboutMeInfoTileState extends State<_AboutMeInfoTile> {
  bool isHovered = false;
  Duration animationDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Material.Material(
      color: Colors.transparent,
      child: Material.InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onHover: (value) {
          setState(
            () => isHovered = value,
          );
        },
        onTap: () {
          _jumpTo(widget.item.index);
        },
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: SizedBox(
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedContainer(
                  width: isHovered ? 220 : 180,
                  height: isHovered ? 220 : 180,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  duration: animationDuration,
                  child: AnimatedOpacity(
                    opacity: 1.0,
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        widget.item.asset,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  title: Center(
                    child: AnimatedDefaultTextStyle(
                      duration: animationDuration,
                      style: Material.Theme.of(
                        context,
                      ).textTheme.titleLarge!.merge(
                            TextStyle(
                              fontSize: isHovered ? 22 : 20,
                            ),
                          ),
                      child: Text(
                        widget.item.title,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Text(
                      widget.item.description,
                      textAlign: TextAlign.center,
                      style: Material.Theme.of(
                        context,
                      ).textTheme.bodyMedium!.merge(
                            TextStyle(
                              fontSize: context.isMobile ? 14 : 16,
                            ),
                          ),
                    ),
                  ),
                ),
                if (isHovered || context.isMobile || context.isTablet)
                  Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Button(
                      onPressed: () {
                        _jumpTo(widget.item.index);
                      },
                      child: const Text(
                        'See more',
                      ),
                    ),
                  ),
                SizedBox(
                  height: context.isMobile ? 20 : 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
