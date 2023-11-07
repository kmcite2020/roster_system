// import 'package:isar/isar.dart';
// import 'package:project_roster/domain/repositories/repositories.dart';
// import '../models/models.dart';

// class RostersRepository {
//   Stream<List<Roster>> rosters() =>
//       isar.rosters.where().watch(fireImmediately: true);
//   Stream<Roster?> sid(int id) => isar.txnSync(
//         () => isar.rosters.watchObject(id, fireImmediately: true),
//       );

//   void setRoster(Roster roster) =>
//       isar.writeTxnSync(() => isar.rosters.putSync(roster));
//   void deleteRoster(Roster roster) =>
//       isar.writeTxnSync(() => isar.rosters.deleteSync(roster.id));
//   void clearRosters() => isar.writeTxnSync(() => isar.rosters.clearSync());
// }
