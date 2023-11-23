// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:isar/isar.dart';

import 'package:project_roster/domain/models/models.dart';

import '../presentation/features/rosters/roster_management.dart';

part 'archives/day.dart';
part 'archives/department.dart';
// part 'domain.g.dart';
// part 'manager.dart';
// part 'medical_officer.dart';
// part 'medical_officers.dart';
// part 'misc.dart';
// part 'officer.dart';
// part 'roster.dart';
// part 'archives/settings.dart';
// part 'shift.dart';

// @collection
// @embedded
class Shift {
  // @enumerated
  ShiftType shiftType = ShiftType.morning;
  List<Officer>? officersValue;

  List<Officer> get officers => officersValue ?? [];

  void addOfficer(Officer officer) => officersValue = officers..add(officer);
  void removeOfficer(Officer officer) =>
      officersValue = officers..remove(officer);

  int get shiftHours => switch (shiftType) {
        ShiftType.morning => 6,
        ShiftType.evening => 6,
        ShiftType.night => 12,
      };

  @override
  String toString() => '${shiftType.name} $officers';
}

class Manager {
  // Id id = Isar.autoIncrement;
  String officerName = '';
  int officerScale = 17;
}
