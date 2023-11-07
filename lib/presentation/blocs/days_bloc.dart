part of 'blocs.dart';

// final AddDayBloc addDayBloc = AddDayBloc();

// class AddDayBloc {
//   final dayRM = RM.inject(
//     () => Day(),
//   );

//   final selectedShiftsRM = RM.inject<List<Shift>>(
//     () => [],
//   );
//   set selectedShifts(List<Shift> shifts) => selectedShiftsRM.state = shifts;
//   List<Shift> get selectedShifts => selectedShiftsRM.state;

//   Day get day => dayRM.state;
//   void setDay(Day day) {
//     dayRM.setState(
//       (s) {
//         s = day;
//         return null;
//       },
//     );
//   }

//   void setDayType(DayType? dayType) => setDay(day..dayType = dayType!);

//   void saveDay() {
//     // daysRepository.setDay(day);
//   }
// }

// final DaysBloc daysBloc = DaysBloc();

// class DaysBloc {
//   // final daysRM = RM.injectStream(
//   //   daysRepository.watchDays,
//   //   initialState: <Day>[],
//   // );

//   List<Day> get days => [];

//   // void addPreference(RosterType value, String id) {
//   //   final officer = officersBloc.medicalOfficers.officers[id]!;
//   //   if (officer.preferences.prefs.contains(value)) {
//   //     RM.scaffold.showSnackBar(SnackBar(content: 'This preference is already selected'.text()));
//   //     return; // THROW
//   //   }
//   //   if (officer.preferences.prefs.length > 4) {
//   //     RM.scaffold.showSnackBar(SnackBar(content: 'Can not add more than 4 preferences'.text()));
//   //     return; // THROW
//   //   }
//   //   final prefsCopy = officer.preferences.copyWith(
//   //     prefs: [...officer.preferences.prefs, value],
//   //   );
//   //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
//   // }

//   // removePreference(RosterType value, String id) {
//   //   final officer = officersBloc.medicalOfficers.officers[id]!;
//   //   final prefsCopy = officer.preferences.copyWith(
//   //     prefs: officer.preferences.prefs.where((element) => element != value).toList(),
//   //   );
//   //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
//   // }

//   // clearPreference(String id) {
//   //   final officer = officersBloc.medicalOfficers.officers[id]!;
//   //   final prefsCopy = officer.preferences.copyWith(prefs: []);
//   //   officersBloc.addOfficer(officer.copyWith(preferences: prefsCopy));
//   // }
// }
