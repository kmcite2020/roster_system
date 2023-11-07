import 'package:flutter/material.dart';
import 'package:project_roster/presentation/features/ui.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

class ClearRosterButton extends ReactiveStatelessWidget {
  const ClearRosterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Roster'.text(2).pad(),
            const Spacer(),
            // IconButton(
            //   onPressed: domainBloc.canUndo ? () => domainBloc.undo() : null,
            //   icon: const Icon(Icons.undo),
            // ).pad(),
            // IconButton(
            //   onPressed: domainBloc.canRedo ? () => domainBloc.redo() : null,
            //   icon: const Icon(Icons.redo),
            // ).pad(),
          ],
        ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Theme.of(context).colorScheme.error,
        //     foregroundColor: Theme.of(context).colorScheme.onPrimary,
        //     minimumSize: Themes.minimumButtonSize,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(settingsBloc.getBorderRadius),
        //     ),
        //   ),
        //   onPressed: rostersBloc.x == preconfiguredRosters
        //       ? null
        //       : () async {
        //           rostersBloc.setState(preconfiguredRosters);
        //         },
        //   child: 'Clear Roster'.text(),
        // ).pad(),
      ],
    );
  }
}
