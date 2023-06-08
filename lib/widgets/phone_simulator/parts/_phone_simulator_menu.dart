part of '../phone_simulator_widget.dart';

class _PhoneSimulatorMenu extends StatelessWidget {
  final Function(double value) onScaleFactorChanged;
  final Function() onOrientationChanged;

  final double selectedScaleFactor;

  String scaleFactorStringValue(double scaleFactor) {
    switch (scaleFactor) {
      case 0.4:
        return 'Tiny';
      case 0.6:
        return 'Small';
      case 0.8:
        return 'Medium';
      case 1:
        return 'Large';
      default:
        return 'Medium';
    }
  }

  const _PhoneSimulatorMenu({
    Key? key,
    required this.onScaleFactorChanged,
    required this.onOrientationChanged,
    required this.selectedScaleFactor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final simpleCommandBarItems = <CommandBarItem>[
      CommandBarBuilderItem(
        builder: (context, mode, w) => Tooltip(
          message: "Change orientation of the simulator",
          child: w,
        ),
        wrappedItem: CommandBarButton(
          icon: const Icon(FluentIcons.orientation2),
          label: const Text('Switch orientation'),
          onPressed: () {
            onOrientationChanged.call();
          },
        ),
      ),
      CommandBarBuilderItem(
        builder: (context, mode, w) => Tooltip(
          message: "Change scale of the simulator",
          child: w,
        ),
        wrappedItem: CommandBarButton(
          label: DropDownButton(
            autofocus: false,
            trailing: const Icon(FluentIcons.chevron_down_small),
            title: Container(
              color: Colors.transparent,
              child: Text(
                scaleFactorStringValue(selectedScaleFactor),
              ),
            ),
            items: [
              MenuFlyoutItem(
                selected: selectedScaleFactor == 0.6,
                text:  Text(scaleFactorStringValue(0.6)),
                onPressed: () {
                  onScaleFactorChanged(
                    0.6,
                  );
                },
              ),
              MenuFlyoutItem(
                selected: selectedScaleFactor == 0.8,
                text:  Text(scaleFactorStringValue(0.8)),
                onPressed: () {
                  onScaleFactorChanged(
                    0.8,
                  );
                },
              ),
              MenuFlyoutItem(
                selected: selectedScaleFactor == 1,
                text:  Text(scaleFactorStringValue(1)),
                onPressed: () {
                  onScaleFactorChanged(
                    1,
                  );
                },
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    ];

    return CommandBar(
      mainAxisAlignment: MainAxisAlignment.center,
      overflowBehavior: CommandBarOverflowBehavior.noWrap,
      primaryItems: [
        ...simpleCommandBarItems,
      ],
    );
  }
}
