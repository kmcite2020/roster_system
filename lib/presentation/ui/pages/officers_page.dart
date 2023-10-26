import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../domain/models/models.dart';
import '../../logic.dart';

class OfficersPage extends ReactiveStatelessWidget {
  const OfficersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Officers'),
        bottom:
            //  officersBloc.isAddMedicalOfficerVisible
            Random().nextBool()
                ? PreferredSize(
                    preferredSize: const Size.fromHeight(60),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: TextField(
                                  // controller: officersBloc.medicalOfficerNameField.controller,
                                  )
                              .pad(),
                        ),
                        // Expanded(
                        //   child: IconButton(
                        //     icon: const Icon(Icons.save),
                        //     onPressed: officersBloc.medicalOfficers.officers.values.any((element) => element.name == officersBloc.medicalOfficerNameField.text) ||
                        //             officersBloc.medicalOfficerNameField.text.isEmpty
                        //         ? null
                        //         : () {
                        //             officersBloc.addOfficer(
                        //               MedicalOfficer(
                        //                 id: randomID,
                        //                 name: officersBloc.medicalOfficerNameField.text,
                        //               ),
                        //             );
                        //           },
                        //   ),
                        // )
                      ],
                    ),
                  )
                : null,
      ),
      body: ListView(
        children:
            //  officersBloc.medicalOfficers.officers.values

            officersBloc.officers
                .map(
                  (Officer eachOfficer) => Card(
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                      // child: rostersBloc.countDutyShiftsForMedicalOfficer(eachOfficer).text(),
                                      )
                                  .pad(),
                              IconButton.filledTonal(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  // officersBloc.deleteOfficer(eachOfficer);
                                },
                              ).pad(),
                              IconButton.filledTonal(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  // _isPrefsSelectionEnabled.toggle();
                                  // medicalOfficerBloc.onPreferencesSelectionChanged(
                                  //   !eachOfficer.isPrefsSelectionEnabled,
                                  //   eachOfficer.id,
                                  // );
                                },
                              ).pad(),
                              // eachOfficer.isPrefsSelectionEnabled
                              //     ? SizedBox(
                              //         width: 150,
                              //         height: 50,
                              //         // child: OutlinedButton(
                              //         //   onPressed: eachOfficer.preferences.prefs.isEmpty
                              //         //       ? null
                              //         //       : () => officersBloc.clearPreference(
                              //         //             eachOfficer.id,
                              //         //           ),
                              //         //   child: 'CLEAR'.text(),
                              //         // ).pad(),
                              //       )
                              //     : const SizedBox(),
                            ],
                          ),
                          // eachOfficer.name.toUpperCase().text(1.5),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'ID: ${eachOfficer.id}'.text(),
                          // 'Type: ${eachOfficer.officerType.name}'.text(),
                          // 'Hours: ${eachOfficer.dutyHours}'.text(),
                          const SizedBox(height: 6),
                          // if (eachOfficer.isPrefsSelectionEnabled)
                          //   Wrap(
                          //     children: RosterType.values
                          //         .map(
                          //           (e) => FilterChip(
                          //             selected: eachOfficer.preferences.prefs.contains(e),
                          //             onSelected: eachOfficer.preferences.prefs.length >= 4
                          //                 ? null
                          //                 : (val) {
                          //                     if (val) {
                          //                       // officersBloc.addPreference(e, eachOfficer.id);
                          //                     } else {
                          //                       // officersBloc.removePreference(e, eachOfficer.id);
                          //                     }
                          //                   },
                          //             label: e.name.text(),
                          //           ).pad(3),
                          //         )
                          //         .toList(),
                          //   )
                          // else
                          //   Wrap(
                          //     children: RosterType.values
                          //         .where(
                          //           (element) => eachOfficer.preferences.prefs.contains(
                          //             element,
                          //           ),
                          //         )
                          //         .map(
                          //           (e) => Chip(
                          //             onDeleted: eachOfficer.preferences.prefs.length <= 4
                          //                 ? null
                          //                 : () {
                          //                     // officersBloc.removePreference(
                          //                     //   e,
                          //                     //   eachOfficer.id,
                          //                     // );
                          //                   },
                          //             label: e.name.text(),
                          //           ).pad(3),
                          //         )
                          //         .toList(),
                          //   )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
