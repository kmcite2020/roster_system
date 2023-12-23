// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:roster_system/features/core/navigator.dart';
import 'package:roster_system/features/roster/roster.dart';
import 'package:roster_system/main.dart';
import 'package:roster_system/presentation/features/ui.dart';

import '../components/add_or_remove_medical_officer_dialog.dart';
import '../roster_manager.dart';

class RosterPage extends UI {
  const RosterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final roster = rosterManager.roster;
    return Scaffold(
      appBar: AppBar(
        title: roster.rosterName.text(),
      ),
      body: ListView(
        children: [
          roster.withEffectFromTo.str().text().pad(),
          Table(
            border: TableBorder.all(color: Colors.red),
            children: [
              TableRow(
                children: [
                  'DAY/SHIFT'.text().center().pad(),
                  ...ShiftType.values
                      .map((shift) => shift.name.toUpperCase().text().pad())
                      .toList(),
                ],
              ),
              ...DayType.values.map(
                (day) {
                  return TableRow(
                    children: [
                      day.name.toUpperCase().text().pad(),
                      ...ShiftType.values.map(
                        (shift) {
                          final medicalOfficers = roster.rosterEntries.values
                              .where(
                                (entry) =>
                                    entry.day == day && entry.shift == shift,
                              )
                              .expand(
                                (entry) => entry.medicalOfficers.values,
                              )
                              .toList();

                          return OutlinedButton(
                            onPressed: () {
                              print(shift);
                              print(day);
                              navigator.toDialog(
                                AddOrRemoveMedicalOfficerDialog(
                                  medicalOfficers: medicalOfficers,
                                  dayType: day,
                                  shiftType: shift,
                                ),
                              );
                            },
                            child: Column(
                              children: medicalOfficers.map<Widget>(
                                (eachMedicalOfficer) {
                                  return Wrap(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          // removeMedicalOfficerFromRosterEntry(
                                          //   medicalOfficer: eachMedicalOfficer,
                                          //   dayType: day,
                                          //   shiftType: shift,
                                          // );
                                        },
                                        child: eachMedicalOfficer.name
                                            .toUpperCase()
                                            .text(),
                                      ),
                                    ],
                                  );
                                },
                              ).toList(),
                            ),
                          ).pad();
                        },
                      ).toList(),
                    ],
                  );
                },
              ).toList(),
            ],
          ).pad(),
        ],
      ),
    );
  }
}

void addMedicalOfficer({
  required MedicalOfficer medicalOfficer,
  required DayType dayType,
  required ShiftType shiftType,
}) {
  final rosterEntryOfInterest =
      rosterManager.roster.rosterEntries.values.firstWhere(
    (eachRosterEntry) =>
        eachRosterEntry.day == dayType && eachRosterEntry.shift == shiftType,
  );
  final currentOfficers = rosterEntryOfInterest.medicalOfficers;
  rosterManager.setRosterEntry(
    rosterEntryOfInterest.copyWith(
      medicalOfficers: Map.of(currentOfficers)
        ..[medicalOfficer.id] = medicalOfficer,
    ),
  );
}

void removeMedicalOfficerFromRosterEntry({
  required MedicalOfficer medicalOfficer,
  required DayType dayType,
  required ShiftType shiftType,
}) {
  final rosterEntryOfInterest =
      rosterManager.roster.rosterEntries.values.firstWhere(
    (eachRosterEntry) =>
        eachRosterEntry.day == dayType && eachRosterEntry.shift == shiftType,
  );
  final currentOfficers = rosterEntryOfInterest.medicalOfficers;
  rosterManager.setRosterEntry(
    rosterEntryOfInterest.copyWith(
      medicalOfficers: Map.of(currentOfficers)..remove(medicalOfficer.id),
    ),
  );
}

extension DateTimeRangeExtension on DateTimeRange {
  String str() {
    final from = this.start;
    final to = this.end;
    final strFrom = "${from.day}/${from.month}/${from.year}";
    final strTo = "${to.day}/${to.month}/${to.year}";
    return '$strFrom to $strTo';
  }
}

Map<String, RosterEntry> createRosterEntries() {
  Map<String, RosterEntry> rosterEntries = {};

  for (var day in DayType.values) {
    for (var shift in ShiftType.values) {
      String key = randomID;
      rosterEntries[key] = RosterEntry(
        id: key,
        day: day,
        shift: shift,
        medicalOfficers: {},
      );
    }
  }

  return rosterEntries;
}
