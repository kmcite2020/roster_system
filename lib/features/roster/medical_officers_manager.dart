import 'dart:convert';
import 'package:roster_system/features/roster/roster.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final medicalOfficersManager = MedicalOfficersManager();

class MedicalOfficersManager {
  final medicalOfficersRM = RM.inject(
    () => MedicalOfficers(
      medicalOfficers: [
        MedicalOfficer(name: 'Farooq'),
        MedicalOfficer(name: 'Adnan'),
        MedicalOfficer(name: 'Wisal'),
        MedicalOfficer(name: 'Ayaz'),
        MedicalOfficer(name: 'Junaid'),
      ],
    ),
    persist: () => PersistState(
      key: 'medicalOfficers',
      toJson: (s) => jsonEncode(s),
      fromJson: (json) => MedicalOfficers.fromJson(jsonDecode(json)),
    ),
  );

  MedicalOfficers get medicalOfficers => medicalOfficersRM.state;
  set medicalOfficers(MedicalOfficers _) => medicalOfficersRM.state = _;
  List<MedicalOfficer> get listOfMedicalOfficers =>
      medicalOfficers.medicalOfficers;
  void addMedicalOfficer(MedicalOfficer medicalOfficer) {
    medicalOfficers = medicalOfficers.copyWith(
      medicalOfficers: List.of(listOfMedicalOfficers)..add(medicalOfficer),
    );
  }

  void removeMedicalOfficer(MedicalOfficer medicalOfficer) {
    medicalOfficers = medicalOfficers.copyWith(
      medicalOfficers: List.of(listOfMedicalOfficers)
        ..removeWhere(
          (eachMedicalOfficer) => eachMedicalOfficer.id == medicalOfficer.id,
        ),
    );
  }
}
