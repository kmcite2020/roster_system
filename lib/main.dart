import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:roster_system/features/roster/pages/roster_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'domain/repositories/repositories.dart';
import 'features/core/navigator.dart';
import 'features/settings/settings.dart';

// final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

typedef UI = ReactiveStatelessWidget;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(PersistStoreImpl());
  runApp(const MyApp());
}

class MyApp extends UI {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: themes.theme,
      darkTheme: themes.darkTheme,
      themeMode: settingsManager.themeMode,
      home: RosterPage(),
    );
  }
}

final themes = Themes();

class Themes {
  ThemeData get theme {
    return FlexThemeData.light(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.materialColor,
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
        primarySwatch: settingsManager.materialColor,
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
}
