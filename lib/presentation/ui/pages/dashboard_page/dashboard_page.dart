part of '../../ui.dart';

class DashboardPage extends ReactiveStatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const valueFontSize = 6.0;
    const headFontSize = 1.8;
    return Scaffold(
      appBar: AppBar(
        title: 'DASHBOARD'.text(),
      ),
      body: ListView(
        children: [
          'Open a roster to examine and modify it'.text().pad().card(),
          ...rostersBloc.rosters.map(
            (Roster e) => ElevatedButton(
              onPressed: () {
                router.to(
                  SpecificRosterPage.path,
                  arguments: e.id,
                );
              },
              child: e.department.text(),
            ).pad(),
          ),
          'Medical Officers'.text(headFontSize).center().pad(),
          // officersBloc.medicalOfficers.officers.length.text(valueFontSize).center(),
          'Un-assigned duties'.text(headFontSize).center().pad(),
          // rostersBloc
          //     .countDutyShiftsForMedicalOfficer(
          //       const MedicalOfficer(),
          //     )
          //     .text(valueFontSize)
          //     .center(),
          'Assigned duty hours'.text(headFontSize).center().pad(),
          // officersBloc.allDutyHours.text(valueFontSize).center().pad(),
          'Un-assigned duty hours'.text(headFontSize).center().pad(),
          // (rostersBloc.countDutyShiftsForMedicalOfficer(
          //           const MedicalOfficer(),
          //         ) *
          //         8)
          //     .text(valueFontSize)
          //     .center(),
          // 'Required officers'.text(headFontSize).center().pad(),
          // (rostersBloc.countDutyShiftsForMedicalOfficer(
          //           const MedicalOfficer(),
          //         ) *
          //         8 /
          //         36)
          //     .ceil()
          //     .text(valueFontSize)
          // .center()
        ],
      ),
    );
  }
}
