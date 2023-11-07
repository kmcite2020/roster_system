import 'package:states_rebuilder/states_rebuilder.dart';

import 'doctor.dart';

final doctorEditor = DoctorEditor();

class DoctorEditor {
  late Injected<Doctor> localEditDoctorRM;
  late Doctor editDoctor;
  final globalEditDoctorRM = RM.inject<Doctor>(
    () => throw UnimplementedError(),
  );
  void setEditDoctor(Doctor Function(Doctor doctor) modifier) =>
      localEditDoctorRM.state = modifier(editDoctor);
  void setName(String value) {
    setEditDoctor((doctor) => doctor.copyWith(name: value));
  }

  void setGender(Gender? value) {
    setEditDoctor((doctor) => doctor.copyWith(gender: value!));
  }

  void setDateOfBirth(DateTime value) {
    setEditDoctor((doctor) => doctor.copyWith(dateOfBirth: value));
  }

  void setQualifications(String value) {
    setEditDoctor((doctor) => doctor.copyWith(qualifications: value));
  }

  void setContactDetails(String value) {
    setEditDoctor((doctor) => doctor.copyWith(contactDetails: value));
  }

  void setProfilePicture(String value) {
    setEditDoctor((doctor) => doctor.copyWith(profilePicture: value));
  }

  void setDepartments(String value) {
    setEditDoctor((doctor) => doctor.copyWith(departments: value));
  }

  void setEditing(bool? value) {
    setEditDoctor((doctor) => doctor.copyWith(editing: value!));
  }
}
