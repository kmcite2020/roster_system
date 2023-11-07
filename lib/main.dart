import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'domain/repositories/repositories.dart';
import 'presentation/features/settings/settings.dart';
import 'presentation/features/ui.dart';

final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(PersistStoreImpl());
  // await RM.deleteAllPersistState();
  await directoryRM.initializeState();
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: navigator.routeInformationParser,
        routerDelegate: navigator.routerDelegate,
        debugShowCheckedModeBanner: false,
        theme: themes.theme,
        darkTheme: themes.darkTheme,
        themeMode: settingsManager.themeMode,
      );
}

final themes = Themes();

class Themes {
  ThemeData get theme => FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.materialColor,
        ),
        subThemesData:
            FlexSubThemesData(defaultRadius: settingsManager.borderRadius),
        useMaterial3: true,
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      );
  ThemeData get darkTheme => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: settingsManager.materialColor,
          brightness: Brightness.dark,
        ),
        subThemesData:
            FlexSubThemesData(defaultRadius: settingsManager.borderRadius),
        appBarStyle: FlexAppBarStyle.primary,
        useMaterial3: true,
        darkIsTrueBlack: true,
      );
}
