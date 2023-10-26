import 'package:colornames/colornames.dart';
import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../blocs/duty_manager_bloc.dart';
import '../../logic.dart';

class DutyManagerWidget extends ReactiveStatelessWidget {
  const DutyManagerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Duty Manager'.text(2).pad(),
            CircleAvatar(
              backgroundColor: ConfigurationBloc.to.getMaterialColor,
              child: IconButton(
                tooltip: ConfigurationBloc.to.getMaterialColor.colorName,
                onPressed: () => isShown2.toggle(),
                icon: Icon(
                  isShown2.state ? Icons.done_all : Icons.question_mark,
                ),
              ),
            ).pad(),
          ],
        ),
        if (isShown2.state)
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              minimumSize: Themes.minimumButtonSize,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ConfigurationBloc.to.getBorderRadius),
              ),
            ),
            onPressed: 'dutyManagerBloc.getDutyManager.name' == ''
                ? () async {
                    showDialog(
                      context: context,
                      builder: (_) => SimpleDialog(
                        title: 'Update Name'.text(),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(ConfigurationBloc.to.getBorderRadius),
                        ),
                        children: [
                          TextField(
                            onChanged: (value) =>
                                dutyManagerBloc.setDutyManagerName(value),
                          ).pad(),
                        ],
                      ),
                    );
                  }
                : null,
            child: "dutyManagerBloc.getDutyManager.name".text(),
          ).pad()
      ],
    );
  }
}

final isShown2 = true.inj();
