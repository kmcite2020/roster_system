import 'package:flutter/material.dart';
import 'package:project_roster/presentation/features/doctors_management/doctor_editor/doctor.dart';
import 'package:project_roster/presentation/features/doctors_management/doctors_manager/doctors_manager.dart';
import 'package:project_roster/presentation/features/rosters/roster_management.dart';
import 'package:project_roster/presentation/features/settings/settings.dart';
import 'package:project_roster/presentation/features/ui.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class AddRosterEntryPage extends ReactiveStatelessWidget {
  AddRosterEntryPage({super.key});
  static final selectedDoctorsRM = RM.injectFormField<List<Doctor>>([]);
  static List<Doctor> get doctors => selectedDoctorsRM.value;
  final RosterEntry rosterEntry = RosterEntry.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add Roster Entry'.text(),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: rosterEntry.id,
          ).pad(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(settingsManager.padding),
            decoration: BoxDecoration(
              border: Border.all(
                color: settingsManager.materialColor,
              ),
              borderRadius: BorderRadius.circular(settingsManager.borderRadius),
            ),
            child: 'PLEASE SELECT DOCTORS FOR THE DUTY'.text().pad(),
          ),
          Container(
            margin: EdgeInsets.all(settingsManager.padding),
            decoration: BoxDecoration(
              border: Border.all(
                color: settingsManager.materialColor,
              ),
              borderRadius: BorderRadius.circular(settingsManager.borderRadius),
            ),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: doctorsManager.doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctorsManager.doctors[index];
                    final selectedDoctors = selectedDoctorsRM.value;
                    final selected = selectedDoctors.contains(doctor);
                    return CheckboxListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: index == 0
                            ? BorderRadius.only(
                                topLeft: Radius.circular(
                                  settingsManager.borderRadius,
                                ),
                                topRight: Radius.circular(
                                  settingsManager.borderRadius,
                                ),
                              )
                            : index == doctorsManager.doctors.length - 1
                                ? BorderRadius.only(
                                    bottomRight: Radius.circular(
                                      settingsManager.borderRadius,
                                    ),
                                    bottomLeft: Radius.circular(
                                      settingsManager.borderRadius,
                                    ),
                                  )
                                : BorderRadius.zero,
                      ),
                      selected: selected,
                      selectedTileColor:
                          Theme.of(context).primaryColor.withOpacity(.2),
                      title: doctor.name.text(),
                      subtitle: doctor.id.text(),
                      value: selected,
                      onChanged: (selected) {
                        if (selected!) {
                          selectedDoctorsRM.value = [...doctors, doctor];
                        } else {
                          selectedDoctorsRM.value = doctors.where(
                            (el) {
                              return doctor != el;
                            },
                          ).toList();
                        }
                      },
                      enabled: () {
                        return selectedDoctors.length < 2;
                      }(),
                    );
                  },
                ),
              ],
            ),
          ),
          if (doctors.isNotEmpty && doctors.length >= 2) ...[
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.all(settingsManager.padding),
              decoration: BoxDecoration(
                border: Border.all(
                  color: settingsManager.materialColor,
                ),
                borderRadius: BorderRadius.circular(
                  settingsManager.borderRadius,
                ),
              ),
              child: OutlinedButton(
                onPressed: () {
                  selectedDoctorsRM.value = [];
                },
                child: 'RESET'.text(),
              ),
            ),
            Wrap(
              children: doctors.map(
                (e) {
                  return Container(
                    margin: EdgeInsets.all(settingsManager.padding),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: settingsManager.materialColor,
                      ),
                      borderRadius:
                          BorderRadius.circular(settingsManager.borderRadius),
                    ),
                    child: ChoiceChip.elevated(
                      label: e.name.text(),
                      selected: true,
                    ),
                  );
                },
              ).toList(),
            ),
          ],
          // Wrap(
          //   children: daysBloc.days.map(
          //     (eachDay) {
          //       // eachDay.shifts.loadSync();
          //       final selected = addRosterBloc.roster.days.contains(eachDay);
          //       return FilterChip(
          //         label: eachDay.text(),
          //         selected: selected,
          //         onSelected: (selected) {
          //           if (selected) {
          //             addRosterBloc.addDay(eachDay);
          //           } else {
          //             addRosterBloc.removeDay(eachDay);
          //           }
          //         },
          //       );
          //     },
          //   ).toList(),
          // ),
          DropdownButtonFormField(
            items: DayType.values
                .map(
                  (e) => DropdownMenuItem(
                    child: e.text(),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (onChanged) {},
            decoration: InputDecoration(
              labelText: 'Select days to Add',
            ),
          ).pad(),
          DropdownButtonFormField(
            items: ShiftType.values
                .map(
                  (e) => DropdownMenuItem(
                    child: e.text(),
                    value: e,
                  ),
                )
                .toList(),
            onChanged: (onChanged) {},
            decoration: InputDecoration(
              labelText: 'Select days to Add',
            ),
          ).pad()
        ],
      ),
    );
  }
}

// final addRosterBloc = AddRosterBloc();

// class AddRosterBloc {
//   final rosterRM = RM.inject(
//     () => throw UnimplementedError(),
//   );
//   Roster get roster => rosterRM.state;
//   setName(String name) {}

//   void addDay(Day day) {}

//   void removeDay(Day day) {}

//   void saveRoster() {}
// }
