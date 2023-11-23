import 'package:flutter/material.dart';
import 'package:project_roster/presentation/features/rosters/add_roster_page.dart';
import 'package:project_roster/presentation/features/rosters/roster_management.dart';
// import 'package:project_roster/presentation/ui/pages/rosters_ui/add_roster_page.dart';
// import 'package:project_roster/presentation/ui/pages/rosters_ui/days_page.dart';
// import 'package:project_roster/presentation/ui/pages/rosters_ui/rosters_page.dart';
// import 'package:project_roster/presentation/ui/pages/rosters_ui/shifts_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../domain/models/models.dart';
import 'dart:developer' as dev;

import '../../features/doctors_management/doctor_editor/doctor_editor_page.dart';
import '../../features/doctors_management/doctors_manager/doctors_manager_page.dart';
import '../../features/settings/settings.dart';
import 'rosters/rosters_page.dart';

// import 'pages/officers_page.dart';
// import 'pages/settings/settings_page.dart';

part 'pages/home_page.dart';
// part 'pages/dashboard_page/dashboard_page.dart';
part 'pages/dashboard_page/specific_roster_page.dart';

final navigator = RM.injectNavigator(
  routes: {
    Routes.home: (_) => HomePage(),
    // Routes.dashboard: (_) => DashboardPage(),
    // Routes.officers: (_) => OfficersPage(),
    // Routes.addOfficer: (_) => AddOfficerPage(),
    Routes.addRoster: (_) => AddRosterEntryPage(),
    Routes.roster: (_) => RosterPage(),
    Routes.rosters: (_) => RostersPage(),
    // Routes.days: (_) => DaysPage(),
    // Routes.shifts: (_) => ShiftsPage(),
    Routes.doctors: (_) => DoctorsManagerPage(),
    Routes.doctor: (_) => DoctorEditorPage(id: _.arguments),
    Routes.settings: (_) => SettingsPage(),
  },
);

abstract class Routes {
  static const home = '/';
  static const dashboard = '/dashboard';
  static const doctors = '/doctors';
  static const doctor = '/doctor';
  static const rosters = '/rosters';
  static const roster = '/roster';
  static const addRoster = '/addRoster';
  static const days = '/days';
  static const shifts = '/shifts';
  static const settings = '/settings';
}

extension ObjectExtension on Object? {
  Text text([double? textScaleFactor]) {
    return Text(
      toString(),
      // ignore: deprecated_member_use
      textScaleFactor: textScaleFactor ?? settingsManager.textScaleFactor,
    );
  }

  void inform() => dev.log(toString());
}

extension WidgetExtension on Widget {
  Widget pad([double? padding]) {
    return Padding(
      padding: EdgeInsets.all(padding ?? settingsManager.padding),
      child: this,
    );
  }

  Widget center() {
    return Center(child: this);
  }

  Widget card() {
    return Card(child: this);
  }
}

String get randomID => Uuid().v4();
