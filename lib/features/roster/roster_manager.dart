import 'package:flutter/material.dart';
import 'package:roster_system/features/roster/pages/roster_page.dart';
import 'package:roster_system/features/roster/roster.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final rosterManager = RosterManager();

class RosterManager {
  final rosterRM = RM.inject(
    () => Roster(
      rosterName: 'PEDS OLD ER',
      withEffectFromTo: DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now(),
      ),
      rosterEntries: createRosterEntries(),
    ),
  );

  Roster get roster => rosterRM.state;
  set roster(Roster _) => rosterRM.state = _;

  List<RosterEntry> get listOfRosterEntries =>
      roster.rosterEntries.values.toList();
  void setRosterEntry(RosterEntry rosterEntry) {
    roster = roster.copyWith(
      rosterEntries: Map.of(roster.rosterEntries)
        ..[rosterEntry.id] = rosterEntry,
    );
  }
}
