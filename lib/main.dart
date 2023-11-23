import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'domain/repositories/repositories.dart';
import 'features/doctors_management/doctors_manager/doctors_manager_page.dart';
import 'features/settings/settings.dart';
import 'presentation/features/ui.dart';

// final directoryRM = RM.injectFuture(getApplicationDocumentsDirectory);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RM.storageInitializer(PersistStoreImpl());
  // await RM.deleteAllPersistState();
  // await directoryRM.initializeState();
  runApp(const MyApp());
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themes.theme,
        darkTheme: themes.darkTheme,
        themeMode: settingsManager.themeMode,
        home: Scaffold(
          drawer: MyDrawer(),
          body: IndexedStack(
            children: [
              DoctorsManagerPage(),
            ],
          ),
        ),
      );
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

class MyDrawer extends ReactiveStatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        children: [
          NavigationDrawerDestination(
            icon: Icon(Icons.abc),
            label: 'label'.text(),
          ),
        ],
      ),
    );
  }
}
