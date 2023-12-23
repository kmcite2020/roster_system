// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:roster_system/features/roster/medical_officers_manager.dart';
import 'package:roster_system/features/roster/pages/roster_page.dart';
import 'package:roster_system/features/roster/roster.dart';
import 'package:roster_system/main.dart';
import 'package:roster_system/presentation/features/ui.dart';

import '../../core/navigator.dart';

class AddOrRemoveMedicalOfficerDialog extends UI {
  const AddOrRemoveMedicalOfficerDialog({
    Key? key,
    required this.medicalOfficers,
    required this.dayType,
    required this.shiftType,
  }) : super(key: key);

  final List<MedicalOfficer> medicalOfficers;
  final DayType dayType;
  final ShiftType shiftType;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Wrap(
        children: medicalOfficers.isEmpty
            ? [
                "no medical officers found for the current duty".text().pad(),
                Divider(height: 0),
                ...medicalOfficersManager.listOfMedicalOfficers.map(
                  (everyMedicalOfficer) => ElevatedButton(
                    onPressed: () {
                      addMedicalOfficer(
                        medicalOfficer: everyMedicalOfficer,
                        dayType: dayType,
                        shiftType: shiftType,
                      );
                    },
                    child: everyMedicalOfficer.name.text(),
                  ).pad(),
                ),
              ]
            : [
                'Currently employed Medical Officers'.text().pad(),
                Divider(height: 0),
                ...medicalOfficers
                    .map(
                      (eachMedicalOfficer) => ListTile(
                        onTap: () {
                          removeMedicalOfficerFromRosterEntry(
                            medicalOfficer: eachMedicalOfficer,
                            dayType: dayType,
                            shiftType: shiftType,
                          );
                          navigator.back();
                        },
                        title:
                            eachMedicalOfficer.name.toUpperCase().text().pad(),
                      ),
                    )
                    .toList()
              ],
      ),
    );
  }
}
