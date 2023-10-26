// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'day.dart';
part 'department.dart';
part 'domain.g.dart';
part 'enums.dart';
part 'manager.dart';
part 'medical_officer.dart';
part 'medical_officers.dart';
part 'misc.dart';
part 'officer.dart';
part 'roster.dart';
part 'settings.dart';
part 'shift.dart';

@collection
class Shift {
  Id id = Isar.autoIncrement;
  String shiftName = '';
  int shiftHours = 0;
  List<String> officers = [];
}

// @collection
// class Department {
//   Id id = Isar.autoIncrement;
// }

@collection
class Manager {
  Id id = Isar.autoIncrement;
  String officerName = '';
  int officerScale = 17;
}

// @collection
// class Day {
//   Id id = Isar.autoIncrement;
//   String dayName = '';
//   List<String> shifts = [];
// }
