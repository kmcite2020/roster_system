part of '../logic.dart';

final officersBloc = OfficersBloc();

class OfficersBloc {
  final officersRM = RM.injectStream(
    officersRepository.officers,
    initialState: <Officer>[],
  );

  List<Officer> get officers => officersRM.state;
  void setOfficer(Officer officer) => officersRepository.setOfficer(officer);
  void updateOfficerName(
    String name,
    String officerID,
  ) {}
  void updateOfficerHours(
    int hours,
    String officerID,
  ) {}
  void updateOfficerScale(
    int scale,
    String officerID,
  ) {}
}
