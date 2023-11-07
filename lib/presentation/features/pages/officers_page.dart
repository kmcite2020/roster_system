// import 'package:flutter/material.dart';
// import 'package:project_roster/presentation/ui/ui.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../domain/models/models.dart';
// import '../../blocs/blocs.dart';

// class OfficersPage extends ReactiveStatelessWidget {
//   const OfficersPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Officers'),
//       ),
//       body: ListView(
//         children: officersBloc.officers
//             .map(
//               (Officer eachOfficer) => Card(
//                 child: ListTile(
//                   title: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       eachOfficer.officerName.text(),
//                       // eachOfficer.officerType.name.text(),
//                       // eachOfficer.officerScale.text(),
//                       Row(
//                         children: [
//                           // CircleAvatar(
//                           //         // child: rostersBloc.countDutyShiftsForMedicalOfficer(eachOfficer).text(),
//                           //         )
//                           //     .pad(),
//                           IconButton.filled(
//                             icon: const Icon(Icons.delete),
//                             onPressed: () =>
//                                 officersBloc.deleteOfficer(eachOfficer),
//                           ).pad(),
//                           // IconButton.filledTonal(
//                           //   icon: const Icon(Icons.edit),
//                           //   onPressed: () {
//                           //     // _isPrefsSelectionEnabled.toggle();
//                           //     // medicalOfficerBloc.onPreferencesSelectionChanged(
//                           //     //   !eachOfficer.isPrefsSelectionEnabled,
//                           //     //   eachOfficer.id,
//                           //     // );
//                           //   },
//                           // ).pad(),
//                           // eachOfficer.isPrefsSelectionEnabled
//                           //     ? SizedBox(
//                           //         width: 150,
//                           //         height: 50,
//                           //         // child: OutlinedButton(
//                           //         //   onPressed: eachOfficer.preferences.prefs.isEmpty
//                           //         //       ? null
//                           //         //       : () => officersBloc.clearPreference(
//                           //         //             eachOfficer.id,
//                           //         //           ),
//                           //         //   child: 'CLEAR'.text(),
//                           //         // ).pad(),
//                           //       )
//                           //     : const SizedBox(),
//                         ],
//                       ),
//                       // eachOfficer.name.toUpperCase().text(1.5),
//                     ],
//                   ),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       'ID: ${eachOfficer.id}'.text(),
//                       // 'Type: ${eachOfficer.officerType.name}'.text(),
//                       // 'Hours: ${eachOfficer.dutyHours}'.text(),
//                       const SizedBox(height: 6),
//                       // if (eachOfficer.isPrefsSelectionEnabled)
//                       //   Wrap(
//                       //     children: RosterType.values
//                       //         .map(
//                       //           (e) => FilterChip(
//                       //             selected: eachOfficer.preferences.prefs.contains(e),
//                       //             onSelected: eachOfficer.preferences.prefs.length >= 4
//                       //                 ? null
//                       //                 : (val) {
//                       //                     if (val) {
//                       //                       // officersBloc.addPreference(e, eachOfficer.id);
//                       //                     } else {
//                       //                       // officersBloc.removePreference(e, eachOfficer.id);
//                       //                     }
//                       //                   },
//                       //             label: e.name.text(),
//                       //           ).pad(3),
//                       //         )
//                       //         .toList(),
//                       //   )
//                       // else
//                       //   Wrap(
//                       //     children: RosterType.values
//                       //         .where(
//                       //           (element) => eachOfficer.preferences.prefs.contains(
//                       //             element,
//                       //           ),
//                       //         )
//                       //         .map(
//                       //           (e) => Chip(
//                       //             onDeleted: eachOfficer.preferences.prefs.length <= 4
//                       //                 ? null
//                       //                 : () {
//                       //                     // officersBloc.removePreference(
//                       //                     //   e,
//                       //                     //   eachOfficer.id,
//                       //                     // );
//                       //                   },
//                       //             label: e.name.text(),
//                       //           ).pad(3),
//                       //         )
//                       //         .toList(),
//                       //   )
//                     ],
//                   ),
//                 ),
//               ),
//             )
//             .toList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => navigator.to(Routes.addOfficer),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class AddOfficerPage extends ReactiveStatelessWidget {
//   const AddOfficerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Officer;
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Add Officer'.text(),
//       ),
//       body: ListView(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: TextFormField(
//                   initialValue: officersBloc.officer.officerName,
//                   onChanged: officersBloc.setOfficerName,
//                   decoration: InputDecoration(labelText: 'Officer Name'),
//                 ).pad(),
//               ),
//               // Expanded(
//               //   flex: 2,
//               //   child: DropdownMenu(
//               //     initialSelection: officersBloc.officer.officerScale,
//               //     dropdownMenuEntries: Officer.scales
//               //         .map(
//               //           (e) => DropdownMenuEntry(
//               //             value: e,
//               //             label: e.toString(),
//               //           ),
//               //         )
//               //         .toList(),
//               //     onSelected: officersBloc.setOfficerScale,
//               //   ).pad(),
//               // )
//             ],
//           ),
//           // DropdownButtonFormField(
//           //   value: officersBloc.officer.officerType,
//           //   items: OfficerType.values
//           //       .map(
//           //         (eachOfficerType) => DropdownMenuItem(
//           //           child: eachOfficerType.name.text(),
//           //           value: eachOfficerType,
//           //         ),
//           //       )
//           //       .toList(),
//           //   onChanged: officersBloc.setOfficerType,
//           // ).pad(),
//           ElevatedButton(
//             onPressed: officersBloc.isOfficerInvalid()
//                 ? null
//                 : officersBloc.saveOfficer,
//             child: 'Save'.text(),
//           ).pad(),
//         ],
//       ),
//     );
//   }
// }
