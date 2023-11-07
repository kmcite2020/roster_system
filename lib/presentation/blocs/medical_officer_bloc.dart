part of 'blocs.dart';

final medicalOfficerBlocRM = RM.inject(
  () => MedicalOfficerBloc(),
);
MedicalOfficerBloc get medicalOfficerBloc => medicalOfficerBlocRM.state;

class MedicalOfficerBloc {
  // onPreferencesSelectionChanged(bool? value, String id) {
  //   final officer = medicalOfficersRepository.state.officers[id]!;
  //   officersBloc.addOfficer(officer.copyWith(isPrefsSelectionEnabled: value!));
  // }

  // final medicalOfficerRM = RM.inject<MedicalOfficer>(
  //   () => MedicalOfficer(),
  //   sideEffects: SideEffects.onAll(
  //     onWaiting: null,
  //     onError: null,
  //     onData: (onData) {
  //       // final medicalOfficer = medicalOfficersRepository.state.officers[onData.id];
  //       // if (medicalOfficer == null) return;
  //       // medicalOfficersRepository.addOfficer(medicalOfficer);
  //     },
  //   ),
  // );

  // MedicalOfficer get state => medicalOfficerRM.state;
  // setState(MedicalOfficer value) => medicalOfficerRM.state = value;

  // setId(String value) => setState(state.copyWith(id: value));

  // setName(String value) => setState(state.copyWith(name: value));

  // setMorningShiftCount(value) => setState(state.copyWith(morningShiftCount: value));

  // setEveningShiftCount(value) => setState(state.copyWith(eveningShiftCount: value));

  // setNightShiftCount(value) => setState(state.copyWith(nightShiftCount: value));

  // setPreferencesSelectionEnabling(value) => setState(state.copyWith(isPrefsSelectionEnabled: value));

  // setOfficerType(value) => setState(state.copyWith(officerType: value));

  // setPreferences(value) => setState(state.copyWith(preferences: value));
}
