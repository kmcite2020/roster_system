import 'package:flutter/material.dart';
import 'package:project_roster/main.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../widgets/colors_widget.dart';
import '../../widgets/theme_modes_widget.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          // DutyManagerWidget(),
          // MedicalOfficerManagement(),
          // ClearRosterButton(),
          ColorsWidget(),
          ThemeModesWidget(),
        ],
      ),
    );
  }
}
