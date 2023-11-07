import 'package:states_rebuilder/states_rebuilder.dart';

import '../doctor_editor/doctor.dart';

final doctorsManager = DoctorsManager();

class DoctorsManager {
  final doctorsRM = RM.inject(
    () => <Doctor>[],
    persist: () => PersistState(
      key: 'doctors',
      fromJson: Doctor.fromListJson,
      toJson: Doctor.toListJson,
    ),
  );
  List<Doctor> get doctors => doctorsRM.state;
  void setDoctor(Doctor doctor) {
    List<Doctor> docs;
    final index = doctors.indexWhere((element) => element.id == doctor.id);
    if (index == -1) {
      docs = List.from(doctors)..add(doctor);
    } else {
      docs = List.from(doctors)..[index] = doctor;
    }
    doctorsRM.state = docs;
  }

  void removeDoctor(Doctor doctor) {
    doctorsRM.state = List.from(doctors)..remove(doctor);
  }

  void addDoctor() {
    final doctor = Doctor.init();
    doctorsRM.state = List.from(doctors)..add(doctor);
  }

  Doctor get(String id) => doctors.firstWhere((element) => element.id == id);
}
