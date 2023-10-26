import 'package:project_roster/domain/models/models.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/repositories/repositories.dart';

final DomainBloc domainBloc = DomainBloc();

class DomainBloc {
  final domainRM = RM.injectStream(
    domainRepository.domain,
  );

  Domain get domain => domainRM.state ?? Domain();
  void setDomain(Domain domain) {
    domainRM.state = domain;
    domainRM.notify();
    domainRepository.setDomain(domain);
  }

  // Map<String, Roster> get rosters => domain.rosters;
  // void setRosters(Map<String, Roster> rosters) =>
  //     setDomain(domain.copyWith(rosters: rosters));

  // Map<String, Day> get days => domain.days;
  // void setDays(Map<String, Day> days) => setDomain(domain.copyWith(days: days));

  // Map<String, Shift> get shifts => domain.shifts;
  // void setShifts(Map<String, Shift> shifts) =>
  //     setDomain(domain.copyWith(shifts: shifts));

  // Map<String, Officer> get officers => domain.officers;
  // void setOfficers(Map<String, Officer> officers) =>
  //     setDomain(domain.copyWith(officers: officers));

  // Map<String, Department> get departments => domain.departments;
  // void setDepartments(Map<String, Department> departments) =>
  //     setDomain(domain.copyWith(departments: departments));

  // Settings get settings => domain.settings;
  // void setSettings(Settings value) =>
  //     setDomain(domain.copyWith(settings: value));

  // Map<String, Manager> get managers => domain.managers;
  // void setManagers(Map<String, Manager> value) => setDomain(
  //       domain.copyWith(managers: value),
  //     );
}
