part of '../logic.dart';

abstract class ToJson {
  String toJson();
}

String toJson<T extends ToJson>(T value) => value.toJson();

class ConfigurationBloc {
  static final to = ConfigurationBloc();
  final configurationRM = RM.inject(
    Configuration.new,
    persist: () => PersistState(
      key: 'configuration',
      fromJson: Configuration.fromJson,
      toJson: toJson,
    ),
  );
  Configuration get getConfiguration => configurationRM.state;
  void setConfiguration(Configuration configuration) {
    configurationRM.state = configuration;
    configurationRM.notify();
  }

  double get getBorderRadius => getConfiguration.borderRadius;
  double get getPadding => getConfiguration.padding;
  double get getTextScaleFactor => getConfiguration.textScaleFactor;

  int get getPageIndex => getConfiguration.pageIndex;
  ThemeMode get getThemeMode => getConfiguration.themeMode;
  MaterialColor get getMaterialColor => getConfiguration.materialColor;

  void setPageIndex(int? value) {
    setConfiguration(getConfiguration..pageIndex = value!);
  }

  void setThemeMode(ThemeMode value) {
    setConfiguration(getConfiguration..themeMode = value);
  }

  void setMaterialColor(MaterialColor value) {
    setConfiguration(getConfiguration..materialColor = value);
  }
}
