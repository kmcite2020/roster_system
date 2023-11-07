import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:project_roster/domain/domain.dart';

import '../../presentation/features/rosters/roster_management.dart';
part 'models.freezed.dart';
// part 'models.g.dart';

@freezed
class Roster with _$Roster {
  const factory Roster({
    required final String id,
    required final String rosterName,
    required final List<Day> days,
    required final String scale,
  }) = _Roster;
}

@freezed
class Day with _$Day {
  const factory Day({
    required final DayType dayType,
    required final List<Shift> shifts,
    required final String scale,
  }) = _Day;
}

@freezed
class Officer with _$Officer {
  const factory Officer({
    required final String id,
    required final String officerName,
    required final String shiftHours,
    required final String scale,
  }) = _Officer;
}

enum OfficerType {
  houseOfficer,
  medicalOfficer,
  trainingMedicalOfficer,
  registerar,
  consultant,
}
