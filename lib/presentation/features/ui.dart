import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../domain/models/models.dart';
import '../../features/doctors_management/doctor_editor/doctor_editor_page.dart';
import '../../features/doctors_management/doctors_manager/doctors_manager_page.dart';
import '../../features/settings/settings.dart';
import 'rosters/add_roster_page.dart';
import 'rosters/roster_management.dart';
import 'rosters/rosters_page.dart';

part 'pages/dashboard_page/specific_roster_page.dart';
part 'pages/home_page.dart';

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
