part of '../main.dart';

class Themes {
  static ThemeData get theme => FlexThemeData.light(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ConfigurationBloc.to.getMaterialColor,
        ),
        useMaterial3: true,
        lightIsWhite: true,
        appBarStyle: FlexAppBarStyle.primary,
      );
  static ThemeData get darkTheme => FlexThemeData.dark(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ConfigurationBloc.to.getMaterialColor,
          brightness: Brightness.dark,
        ),
        appBarStyle: FlexAppBarStyle.primary,
        useMaterial3: true,
        darkIsTrueBlack: true,
      );

  /// MAGIC NUMBERS
  static int get crossAxisCount => 3;
  static Size get minimumButtonSize => const Size.fromHeight(80);
  static double get appBarHieght => 70;
}
