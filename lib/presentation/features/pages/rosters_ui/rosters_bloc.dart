import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../domain/models/models.dart';

final rostersBloc = RostersBloc();

class RostersBloc {
  final rostersRM = RM.inject(
    () => <Roster>[],
    // rostersRepository.rosters,
    initialState: <Roster>[],
  );

  List<Roster> get rosters => rostersRM.state;
  void setRoster(Roster roster) {
    // rostersRepository.setRoster(roster);
  }

  void setRosterDepartment(department, Roster roster) {
    setRoster(roster);
  }

  void updateRosterDays(List<String> days, String rosterID) {
    // final Roster roster = rosters[rosterID]!;
    // final updated = roster.copyWith(days: days);
    // setRosterByID(rosterID, updated);
  }

  // void assignMedicalOfficerToDuty(
  //   Rosters rosters,
  //   RosterType rosterType,
  //   DayType dayType,
  //   ShiftType shiftType,
  //   MedicalOfficer officer, [
  //   bool isMainOfficer = true,
  // ]) {
  //   final roster = rosters.rosters[rosterType]!;
  //   final day = roster.days[dayType]!;
  //   final shift = day.shifts[shiftType]!;
  //   final officerCopy = officer.copyWith(
  //     morningShiftCount: shiftType == ShiftType.morning ? officer.morningShiftCount + 1 : officer.morningShiftCount,
  //     eveningShiftCount: shiftType == ShiftType.evening ? officer.eveningShiftCount + 1 : officer.eveningShiftCount,
  //     nightShiftCount: shiftType == ShiftType.night ? officer.nightShiftCount + 1 : officer.nightShiftCount,
  //   );
  //   final shiftCopy = shift.copyWith(
  //     shiftOfficers: shift.shiftOfficers.copyWith(
  //       mainOfficer: isMainOfficer ? officerCopy : shift.shiftOfficers.mainOfficer,
  //       subOfficer: isMainOfficer ? shift.shiftOfficers.subOfficer : officerCopy,
  //     ),
  //   );
  //   final dayCopy = day.copyWith(shifts: {...day.shifts, shiftType: shiftCopy});
  //   final rosterCopy = roster.copyWith(days: {...roster.days, dayType: dayCopy});
  //   final rostersCopy = rosters.copyWith(
  //     rosters: {
  //       ...rosters.rosters,
  //       rosterType: rosterCopy,
  //     },
  //   );

  //   /// CALL OFFICERS REPOS
  //   medicalOfficersRepository.addOfficer(officerCopy);

  //   setState(rostersCopy);
  // }

  // void assignMedicalOfficerToDutyB(
  //   Rosters rosters,
  //   RosterType rosterType,
  //   DayType dayType,
  //   ShiftType shiftType,
  //   MedicalOfficer officer, [
  //   bool isMainOfficer = true,
  // ]) {
  //   assignMedicalOfficerToDuty(
  //     rosters,
  //     rosterType,
  //     dayType,
  //     shiftType,
  //     officer,
  //     isMainOfficer,
  //   );
  // }

  // int countDutyShiftsForMedicalOfficer(MedicalOfficer medicalOfficer) {
  //   int count = 0;
  //   for (final roster in x.rosters.values) {
  //     for (final day in roster.days.values) {
  //       for (final shift in day.shifts.values) {
  //         if (shift.shiftOfficers.mainOfficer.id == medicalOfficer.id || shift.shiftOfficers.subOfficer.id == medicalOfficer.id) {
  //           count++;
  //         }
  //       }
  //     }
  //   }
  //   return count;
  // }
}
