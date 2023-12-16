import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:roster_system/presentation/features/ui.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part 'roster_management.freezed.dart';
part 'roster_management.g.dart';

@freezed
class RosterEntry with _$RosterEntry {
  factory RosterEntry({
    required final String id,
    required final String officerOne,
    required final String officerTwo,
    required final DayType day,
    required final ShiftType shift,
    required final String department,
  }) = _RosterEntry;
  factory RosterEntry.fromJson(json) => _$RosterEntryFromJson(json);

  static List<RosterEntry> fromListJson(String source) {
    final List result = json.decode(source) as List;
    return result.map((e) => RosterEntry.fromJson(e)).toList();
  }

  static String toListJson(List<RosterEntry> entries) {
    final List result = entries.map((e) => e.toJson()).toList();
    return json.encode(result);
  }

  factory RosterEntry.id(String id) => RostersManager().id(id);
  factory RosterEntry.create() => RosterEntry(
        id: randomID,
        officerOne: 'officerOne',
        officerTwo: 'officerTwo',
        day: DayType.mon,
        shift: ShiftType.morning,
        department: 'department',
      );
}

enum DayType { mon, tue, wed, thu, fri, sat, sun }

enum ShiftType { morning, evening, night }

class RosterPage extends ReactiveStatelessWidget {
  const RosterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class RostersManager {
  final rosterEntriesRM = RM.inject(
    () => List<RosterEntry>.empty(growable: true),
    persist: () => PersistState(
      key: 'rosterEntries',
      fromJson: RosterEntry.fromListJson,
      toJson: RosterEntry.toListJson,
    ),
  );

  List<RosterEntry> get entries => rosterEntriesRM.state;

  RosterEntry id(String id) =>
      entries.firstWhere((element) => element.id == id);
}
