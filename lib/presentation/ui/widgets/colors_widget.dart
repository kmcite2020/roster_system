import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../logic.dart';

class ColorsWidget extends ReactiveStatelessWidget {
  const ColorsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Colors'.text(2).pad(),
            CircleAvatar(
              backgroundColor: ConfigurationBloc.to.getMaterialColor,
              child: IconButton(
                tooltip: ConfigurationBloc.to.getMaterialColor.colorName,
                onPressed: () => isShown.toggle(),
                icon: Icon(
                  isShown.state ? Icons.done_all : Icons.question_mark,
                ),
              ),
            ).pad(),
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: Themes.crossAxisCount,
          children: COLORS
              .take(isShown.state ? 18 : 3)
              .map(
                (eachColor) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(ConfigurationBloc.to.getBorderRadius),
                    ),
                    backgroundColor: eachColor[200],
                    foregroundColor: eachColor[800],
                  ),
                  onPressed: ConfigurationBloc.to.getMaterialColor == eachColor
                      ? null
                      : () {
                          ConfigurationBloc.to.setMaterialColor(eachColor);
                        },
                  child: Center(
                    child: Text(eachColor.colorName),
                  ),
                ).pad(),
              )
              .toList(),
        ),
      ],
    );
  }
}

final isShown = false.inj();
