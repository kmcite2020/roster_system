import 'main.dart';

export 'dart:convert';
export 'package:colornames/colornames.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:roster_system/features/core/extensions.dart';
export 'package:roster_system/features/core/hive_storage.dart';
export 'package:roster_system/features/core/navigator.dart';
export 'package:roster_system/features/doctors_management/doctor.dart';
export 'package:roster_system/features/doctors_management/doctor_editor.dart';
export 'package:roster_system/features/doctors_management/pages/doctor_editor_page.dart';
export 'package:roster_system/features/doctors_management/doctors_manager.dart';
export 'package:roster_system/features/roster/medical_officers_manager.dart';
export 'package:roster_system/features/roster/pages/roster_page.dart';
export 'package:roster_system/features/roster/roster.dart';
export 'package:roster_system/features/rosters/pages/rosters_page.dart';
export 'package:roster_system/features/settings/settings.dart';
export 'package:roster_system/features/settings/settings_manager.dart';
export 'package:states_rebuilder/states_rebuilder.dart';

class _Injected<T> {
  final Injected<T> injected;
  late final call = injected.call;

  _Injected(this.injected) {
    injected.canRedoState;
    injected.canUndoState;
    injected.customStatus;
    injected.error;
    injected.rebuild;
    injected.state;
    injected.stateAsync;
    injected.subscription;
    injected.snapState;
    injected.customStatus;
    injected.hasData;
    injected.hasError;
    injected.hasObservers;
    injected.isDone;
    injected.isIdle;
    injected.isWaiting;
    injected.inherited;
    injected.reInherited;
    injected.addCleaner(() {});
    injected.addObserver(listener: listener);
    injected.cleanState();
    injected.clearUndoStack();
    injected.deletePersistState();
    injected.dispose();
    injected.disposeIfNotUsed();
    injected.initializeState();
    injected.of(context);
    injected.notify();
    injected.onAll(onWaiting: onWaiting, onError: onError, onData: onData);
    injected.onOrElse(orElse: orElse);
    injected.persistState();
    injected.refresh();
    injected.setState((s) => null);
  }
}

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  runApp(const App());
}

class App extends UI {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      themeMode: settingsManager.themeMode,
      home: RostersPage(),
    );
  }
}

ThemeData get theme {
  return FlexThemeData.light(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: materialColorRM(),
    ),
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsManager.borderRadius,
    ),
    useMaterial3: true,
    lightIsWhite: true,
    appBarStyle: FlexAppBarStyle.primary,
  );
}

ThemeData get darkTheme {
  return FlexThemeData.dark(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: materialColorRM(),
      brightness: Brightness.dark,
    ),
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsManager.borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
    useMaterial3: true,
    darkIsTrueBlack: true,
  );
}
