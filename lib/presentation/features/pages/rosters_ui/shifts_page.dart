// import 'package:flutter/material.dart';
// import 'package:project_roster/domain/domain.dart';
// import 'package:project_roster/presentation/blocs/blocs.dart';
// import 'package:project_roster/presentation/ui/ui.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// import '../../../../domain/models/models.dart';

// class ShiftsPage extends ReactiveStatelessWidget {
//   const ShiftsPage({super.key});

//   static final shiftOfficersRM = RM.inject<List<Officer>>(() => []);
//   static set shiftOfficers(List<Officer> o) => shiftOfficersRM.state = o;
//   static List<Officer> get shiftOfficers => shiftOfficersRM.state;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: 'Shifts'.text(),
//       ),
//       body: Column(
//         children: [
//           /// ADD SHIFT
//           DropdownButtonFormField(
//             value: addShiftBloc.shift.shiftType,
//             items: ShiftType.values
//                 .map(
//                   (eachDayType) => DropdownMenuItem(
//                     value: eachDayType,
//                     child: eachDayType.name.toUpperCase().text(),
//                   ),
//                 )
//                 .toList(),
//             onChanged: addShiftBloc.setShiftType,
//           ).pad(),
//           Wrap(
//             children: officersBloc.officers.map(
//               (e) {
//                 final selected = shiftOfficers.contains(e);
//                 return FilterChip(
//                   label: e.text(),
//                   selected: selected,
//                   onSelected: (selected) {
//                     if (selected) {
//                       shiftOfficers = [...shiftOfficers, e];
//                     } else {
//                       shiftOfficers =
//                           shiftOfficers.where((el) => e != el).toList();
//                     }
//                   },
//                 ).pad();
//               },
//             ).toList(),
//           ),
//           ElevatedButton(
//             onPressed: addShiftBloc.saveShift,
//             child: 'Save Shift'.text(),
//           ),
//           ListView.builder(
//             shrinkWrap: true,
//             itemCount: shifts.length,
//             itemBuilder: (_, i) {
//               final shift = shifts[i];
//               return ListTile(
//                 title: shift.text(),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
