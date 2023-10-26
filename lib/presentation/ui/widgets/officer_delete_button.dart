import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class MedicalOfficerManagement extends ReactiveStatelessWidget {
  const MedicalOfficerManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            'Medical Officers'.text(2).pad(),
            // Switch(
            //   value: officersBloc.isAddMedicalOfficerVisible,
            //   onChanged: officersBloc.isAddMedicalOfficerVisibleTo,
            // ).pad(),
          ],
        ),
        // officersBloc.isAddMedicalOfficerVisible
        //     ? ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Theme.of(context).colorScheme.error,
        //           foregroundColor: Theme.of(context).colorScheme.onPrimary,
        //           minimumSize: Themes.minimumButtonSize,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(settingsBloc.getBorderRadius),
        //           ),
        //         ),
        //         onPressed: officersBloc.medicalOfficers.officers.isEmpty
        //             ? null
        //             : () {
        //                 officersBloc.deleteAllOfficers();
        //               },
        //         child: 'Delete All Officers'.text(),
        //       ).pad()
        //     : const SizedBox(),
        // officersBloc.isAddMedicalOfficerVisible
        //     ? ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Theme.of(context).colorScheme.error,
        //           foregroundColor: Theme.of(context).colorScheme.onPrimary,
        //           minimumSize: Themes.minimumButtonSize,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(settingsBloc.getBorderRadius),
        //           ),
        //         ),
        //         onPressed: officersBloc.medicalOfficers.officers.isNotEmpty
        //             ? null
        //             : () {
        //                 // medicalOfficersRepository.preConfigureMedicalOfficers();
        //               },
        //         child: 'Restore Officers'.text(),
        //       ).pad()
        //     : const SizedBox(),
      ],
    );
  }
}
