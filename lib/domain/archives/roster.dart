part of 'domain.dart';

// @freezed
// class Roster with _$Roster {
//   const factory Roster({
//     @Default(<String>[]) final List<String> days,
//     @Default('') final String rosterName,
//     @Default('') final String department,
//     required final String id,
//   }) = _Roster;
//   factory Roster.fromID(String id) => domainBloc.rosters[id] != null ? domainBloc.rosters[id]! : Roster(id: id);
//   factory Roster.surgical() => Roster(
//         days: [],
//         rosterName: 'Surgical Ward',
//         id: randomID,
//       );
//   factory Roster.fromJson(json) => _$RosterFromJson(json);
// }
