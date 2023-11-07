// import 'package:isar/isar.dart';
// import '../models/models.dart';
// import 'repositories.dart';

// class OfficersRepository {
//   Stream<List<Officer>> officers() =>
//       isar.officers.where().watch(fireImmediately: true);
//   Stream<Officer?> sid(int id) => isar.txnSync(
//         () => isar.officers.watchObject(
//           id,
//           fireImmediately: true,
//         ),
//       );

//   void setOfficer(Officer officer) =>
//       isar.writeTxnSync(() => isar.officers.putSync(officer));
//   void deleteOfficer(Officer officer) =>
//       isar.writeTxnSync(() => isar.officers.deleteSync(officer.id));
//   void clearOfficers() => isar.writeTxnSync(() => isar.officers.clearSync());
// }
