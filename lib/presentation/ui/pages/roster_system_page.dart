// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:project_roster/domain/domain.dart';
// import 'package:project_roster/main.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../domain/models/models.dart';
// import '../../logic.dart';

// final rosterSystemPageTabsRM = RM.injectTabPageView(
//   length: rostersBloc.rosters.isEmpty ? 1 : rostersBloc.rosters.length,
// );

// class RosterSystemPage extends ReactiveStatelessWidget {
//   const RosterSystemPage({key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final dayWidth = size.width / 6;

//     return OnTabPageViewBuilder(
//       listenTo: rosterSystemPageTabsRM,
//       builder: (_) => Scaffold(
//         appBar: AppBar(
//           title: 'ROSTER SYSTEM'.text(),
//           bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(40),
//             child: TabBar(
//               controller: rosterSystemPageTabsRM.tabController,
//               isScrollable: true,
//               tabs: rostersBloc.rosters.values.map(
//                 (e) {
//                   return Tab(
//                     child: e.rosterName.text(),
//                   );
//                 },
//               ).toList(),
//             ),
//           ),
//         ),
//         body: TabBarView(
//           children: rostersBloc.rosters.values
//               .map(
//                 (Roster eachRoster) => SingleChildScrollView(
//                   physics: const BouncingScrollPhysics(),
//                   child: Table(
//                       columnWidths: {
//                         0: FixedColumnWidth(dayWidth),
//                       },
//                       children: eachRoster.days.map(
//                         (e) {
//                           // return Day(id: e);
//                         },
//                       ).map(
//                         (eachDay) {
//                           return TableRow(
//                               children: eachDay.shifts.map(
//                             (e) {
//                               // return Shift.fromID(e);
//                             },
//                           ).map(
//                             (eachShift) {
//                               // final MedicalOfficer mainOfficer = eachShift.shiftOfficers.mainOfficer;
//                               // final MedicalOfficer subOfficer = eachShift.shiftOfficers.subOfficer;
//                               return TableCell(
//                                 child: Column(
//                                   children: [
//                                     // PopupMedicalOfficersMenu(
//                                     //   officer: mainOfficer,
//                                     //   dayType: eachDay.dayType,
//                                     //   rosterType: eachRoster.rosterType,
//                                     //   shiftType: eachShift.shiftType,
//                                     //   onSelected: (officer) {
//                                     //     'started'.log();
//                                     //     rostersBloc.assignMedicalOfficerToDuty(
//                                     //       rostersBloc.x,
//                                     //       eachRoster.rosterType,
//                                     //       eachDay.dayType,
//                                     //       eachShift.shiftType,
//                                     //       officer,
//                                     //     );
//                                     //   },
//                                     // ),
//                                     // PopupMedicalOfficersMenu(
//                                     //   officer: subOfficer,
//                                     //   dayType: eachDay.dayType,
//                                     //   rosterType: eachRoster.rosterType,
//                                     //   shiftType: eachShift.shiftType,
//                                     //   onSelected: (officer) {
//                                     //     'started'.log();
//                                     //     rostersBloc.assignMedicalOfficerToDuty(
//                                     //       rostersBloc.x,
//                                     //       eachRoster.rosterType,
//                                     //       eachDay.dayType,
//                                     //       eachShift.shiftType,
//                                     //       officer,
//                                     //       false,
//                                     //     );
//                                     //   },
//                                     // ),
//                                   ],
//                                 ),
//                               );
//                             },
//                           ).toList()
//                               // ..insert(
//                               //   0,
//                               //   daysColumn(eachDay),
//                               // ),
//                               );
//                         },
//                       ).toList()
//                       // ..insert(
//                       //   0,
//                       //   topTableRow(),
//                       // ),
//                       ),
//                 ),
//               )
//               .toList(),
//         ),
//       ),
//     );
//   }

//   TableCell daysColumn(Day eachDay) {
//     return TableCell(
//       child: Align(
//           // child: eachDay.dayType.name.toUpperCase().text().pad(),
//           ),
//     );
//   }

//   TableRow topTableRow() => TableRow(
//         children: [
//           TableCell(child: 'DAYS'.text().pad()),
//           TableCell(child: 'MORNING'.text().pad()),
//           TableCell(child: 'EVENING'.text().pad()),
//           TableCell(child: 'NIGHT'.text().pad()),
//         ],
//       );
// }

// // class PopupMedicalOfficersMenu extends StatelessWidget {
// //   const PopupMedicalOfficersMenu({
// //     Key? key,
// //     required this.rosterType,
// //     required this.shiftType,
// //     required this.dayType,
// //     required this.officer,
// //     this.onSelected,
// //   }) : super(key: key);

// //   final RosterType rosterType;
// //   final ShiftType shiftType;
// //   final DayType dayType;
// //   final MedicalOfficer officer;
// //   final void Function(MedicalOfficer)? onSelected;
// //   @override
// //   Widget build(BuildContext context) {
// //     return PopupMenuButton<MedicalOfficer>(
// //       itemBuilder: (BuildContext context) {
// //         return officersBloc.medicalOfficers.officers.values
// //             .map(
// //               (e) => PopupMenuItem(
// //                 value: e,
// //                 child: e.name.text(),
// //               ),
// //             )
// //             .toList();
// //       },
// //       onSelected: onSelected,
// //       child: Container(
// //         margin: const EdgeInsets.all(2),
// //         width: 100,
// //         height: 60,
// //         decoration: BoxDecoration(
// //           color: settingsBloc.getMaterialColor[600],
// //           borderRadius: BorderRadius.circular(settingsBloc.getBorderRadius),
// //         ),
// //         child: officer.name.toUpperCase().text().pad(),
// //       ),
// //     );
// //   }
// // }
