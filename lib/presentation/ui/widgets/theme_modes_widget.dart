import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import '../../logic.dart';

class ThemeModesWidget extends ReactiveStatelessWidget {
  const ThemeModesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Theme Modes'.text(2).pad(),
        GridView.count(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            for (final eachThemeMode in [ThemeMode.light, ThemeMode.dark])
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(ConfigurationBloc.to.getBorderRadius),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  foregroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: ConfigurationBloc.to.getThemeMode == eachThemeMode
                    ? null
                    : () => ConfigurationBloc.to.setThemeMode(eachThemeMode),
                child: Center(
                  child: Text(
                    eachThemeMode.name.toUpperCase(),
                  ),
                ),
              ).pad(),
          ],
        ),
      ],
    );
  }
}
