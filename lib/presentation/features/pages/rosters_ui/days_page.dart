// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../../domain/models/models.dart';
// import '../../../blocs/blocs.dart';
// import '../../ui.dart';

// class DaysPage extends ReactiveStatelessWidget {
//   const DaysPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Days'.text(),
//       ),
//       body: Column(
//         children: [
//           DropdownButtonFormField(
//             value: addDayBloc.day.dayType,
//             items: DayType.values
//                 .map(
//                   (eachDayType) => DropdownMenuItem(
//                     value: eachDayType,
//                     child: eachDayType.name.toUpperCase().text(),
//                   ),
//                 )
//                 .toList(),
//             onChanged: addDayBloc.setDayType,
//           ).pad(),
//           Wrap(
//             children: shifts.map(
//               (eachShift) {
//                 // eachShift.officers.loadSync();
//                 final selected = addDayBloc.selectedShifts.contains(eachShift);
//                 return FilterChip(
//                   label: eachShift.text(),
//                   selected: selected,
//                   onSelected: (selected) {
//                     if (selected) {
//                       addDayBloc.selectedShifts = [
//                         ...addDayBloc.selectedShifts,
//                         eachShift
//                       ];
//                     } else {
//                       addDayBloc.selectedShifts = addDayBloc.selectedShifts
//                           .where((el) => eachShift != el)
//                           .toList();
//                     }
//                   },
//                 );
//               },
//             ).toList(),
//           ),
//           ElevatedButton(
//             onPressed: addDayBloc.saveDay,
//             child: 'Save Day'.text(),
//           ),
//           Divider(),
//           ...daysBloc.days.map(
//             (eachDay) => eachDay.text(),
//           ),
//         ],
//       ),
//     );
//   }
// }
