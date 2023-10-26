part of '../logic.dart';

mixin PreferencesBloc {
  // void addPreference(RosterType value, String id) {
  //   final officer = officersBloc.medicalOfficers.officers[id]!;
  //   if (officer.preferences.prefs.contains(value)) {
  //     RM.scaffold.showSnackBar(SnackBar(content: 'This preference is already selected'.text()));
  //     return; // THROW
  //   }
  //   if (officer.preferences.prefs.length > 4) {
  //     RM.scaffold.showSnackBar(SnackBar(content: 'Can not add more than 4 preferences'.text()));
  //     return; // THROW
  //   }
  //   final prefsCopy = officer.preferences.copyWith(
  //     prefs: [...officer.preferences.prefs, value],
  //   );
  //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
  // }

  // removePreference(RosterType value, String id) {
  //   final officer = officersBloc.medicalOfficers.officers[id]!;
  //   final prefsCopy = officer.preferences.copyWith(
  //     prefs: officer.preferences.prefs.where((element) => element != value).toList(),
  //   );
  //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
  // }

  // clearPreference(String id) {
  //   final officer = officersBloc.medicalOfficers.officers[id]!;
  //   final prefsCopy = officer.preferences.copyWith(prefs: []);
  //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
  // }
}
