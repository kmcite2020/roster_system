import 'dart:developer' as dev;
import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_roster/domain/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import 'domain/models/models.dart';
import 'presentation/logic.dart';
import 'presentation/ui/pages/officers_page.dart';
import 'presentation/ui/pages/settings/settings_page.dart';
import 'presentation/ui/ui.dart';

part 'app.dart';
part 'common/constants.dart';
part 'common/extensions.dart';
part 'common/isar.dart';
part 'common/router.dart';
part 'common/themes.dart';

void main() async {
  await setup();
  runApp(MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: Themes.theme,
      darkTheme: Themes.darkTheme,
      themeMode: ConfigurationBloc.to.getThemeMode,
    );
  }
}
