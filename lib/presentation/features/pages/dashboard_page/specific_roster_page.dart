// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../ui.dart';

class SpecificRosterPage extends ReactiveStatelessWidget {
  const SpecificRosterPage({
    Key? key,
    required this.rosterID,
  }) : super(key: key);
  final String rosterID;
  TableCell daysColumn(Day eachDay) => TableCell(
        child: Align(
            // child: eachDay.dayType.name.toUpperCase().text().pad(),
            ),
      );

  TableRow topTableRow() => TableRow(
        children: [
          TableCell(child: 'DAYS'.text().pad()),
          TableCell(child: 'MORNING'.text().pad()),
          TableCell(child: 'EVENING'.text().pad()),
          TableCell(child: 'NIGHT'.text().pad()),
        ],
      );
  @override
  Widget build(BuildContext context) {
    // print(rosterType);
    // final size = MediaQuery.of(context).size;
    // final dayWidth = size.width / 6;
    final roster = 'Roster()';
    return Scaffold(
      appBar: AppBar(
        title: roster.text(),
      ),

      body: roster.text(),
      // body: SingleChildScrollView(
      //   physics: const BouncingScrollPhysics(),
      //   child: Table(
      //     // columnWidths: {
      //     //   0: FixedColumnWidth(dayWidth),
      //     // },
      //     children: roster.days.map((e) => Day(id: e)).map(
      //       (eachDay) {
      //         return TableRow(
      //           children: eachDay.shifts
      //               .map(
      //             (e) => Shift.night(),
      //           )
      //               .map(
      //             (eachShift) {
      //               // final MedicalOfficer mainOfficer = eachShift.shiftOfficers.mainOfficer;
      //               // final MedicalOfficer subOfficer = eachShift.shiftOfficers.subOfficer;

      //               return TableCell(
      //                 child: Column(
      //                   children: [
      //                     // PopupMedicalOfficersMenu(
      //                     //   officer: mainOfficer,
      //                     //   dayType: eachDay.dayType,
      //                     //   rosterType: rosterType,
      //                     //   shiftType: eachShift.shiftType,
      //                     //   onSelected: (officer) {
      //                     //     'started'.log();
      //                     //     // rostersBloc.assignMedicalOfficerToDuty(
      //                     //     //   rostersBloc.x,
      //                     //     //   rosterType,
      //                     //     //   eachDay.dayType,
      //                     //     //   eachShift.shiftType,
      //                     //     //   officer,
      //                     //     // );
      //                     //   },
      //                     // ),
      //                     // PopupMedicalOfficersMenu(
      //                     //   officer: subOfficer,
      //                     //   dayType: eachDay.dayType,
      //                     //   rosterType: rosterType,
      //                     //   shiftType: eachShift.shiftType,
      //                     //   onSelected: (officer) {
      //                     //     'started'.log();
      //                     //     // rostersBloc.assignMedicalOfficerToDuty(
      //                     //     //   rostersBloc.x,
      //                     //     //   rosterType,
      //                     //     //   eachDay.dayType,
      //                     //     //   eachShift.shiftType,
      //                     //     //   officer,
      //                     //     //   false,
      //                     //     // );
      //                     //   },
      //                     // ),
      //                   ],
      //                 ),
      //               );
      //             },
      //           ).toList()
      //             ..insert(
      //               0,
      //               daysColumn(eachDay),
      //             ),
      //         );
      //       },
      //     ).toList()
      //       ..insert(
      //         0,
      //         topTableRow(),
      //       ),
      //   ),
      // ),
    );
  }
}
