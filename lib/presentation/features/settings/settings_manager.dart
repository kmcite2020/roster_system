part of 'settings.dart';

final SettingsManager settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () {
      return PersistState(
        key: 'settings',
        fromJson: (json) => Settings.fromJson(jsonDecode(json)),
        toJson: (s) => jsonEncode(s.toJson()),
      );
    },
  );
  Settings get settings => settingsRM.state;
  set settings(Settings settings) => settingsRM.state = settings;

  void setSettings(Settings Function(Settings settings) modifier) =>
      settings = modifier(settings);

  double get borderRadius => settings.borderRadius;
  double get padding => settings.padding;
  double get textScaleFactor => settings.textScaleFactor;
  int get pageIndex => settings.pageIndex;
  ThemeMode get themeMode => settings.themeMode;
  MaterialColor get materialColor => settings.materialColor;

  void setPageIndex(int? value) =>
      setSettings((settings) => settings.copyWith(pageIndex: value!));

  void setThemeMode(ThemeMode? value) =>
      setSettings((settings) => settings.copyWith(themeMode: value!));

  void setMaterialColor(MaterialColor? value) =>
      setSettings((settings) => settings.copyWith(materialColor: value!));
}
