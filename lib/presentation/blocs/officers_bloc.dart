// ignore_for_file: body_might_complete_normally_nullable

part of 'blocs.dart';

// final officersBloc = OfficersBloc();

// class OfficersBloc {
//   final officersRM = RM.injectStream(
//     officersRepository.officers,
//     initialState: <Officer>[],
//   );

//   List<Officer> get officers => officersRM.state;

//   final officerRM = RM.inject(() => Officer());
//   Officer get officer => officerRM.state;
//   void setOfficer(Officer officer) {
//     officerRM.setState((s) {
//       s = officer;
//     });
//   }

//   bool isOfficerInvalid() => officers
//       .any((eachOfficer) => eachOfficer.officerName == officer.officerName);

//   void saveOfficer() {
//     officersRepository.setOfficer(officer);
//     navigator.back();
//   }

//   void setOfficerName(String name) => setOfficer(officer..officerName = name);

//   void setOfficerType(OfficerType? officerType) =>
//       setOfficer(officer..officerType = officerType!);

//   void setShiftHours(int shiftHours) =>
//       setOfficer(officer..shiftHours = shiftHours);

//   void setOfficerScale(int? officerScale) =>
//       setOfficer(officer..officerScale = officerScale!);

//   void deleteOfficer(Officer officer) =>
//       officersRepository.deleteOfficer(officer);
// }
