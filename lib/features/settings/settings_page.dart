part of 'settings.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // DutyManagerWidget(),
          // ClearRosterButton(),
          DropdownButtonFormField(
            value: settingsManager.themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  child: eachThemeMode.name.toUpperCase().text(),
                  value: eachThemeMode,
                );
              },
            ).toList(),
            onChanged: settingsManager.setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settingsManager.materialColor,
            items: Colors.primaries.map(
              (eachMaterialColor) {
                return DropdownMenuItem(
                  child: eachMaterialColor.colorName.toUpperCase().text(),
                  value: eachMaterialColor,
                );
              },
            ).toList(),
            onChanged: settingsManager.setMaterialColor,
          ).pad(),
        ],
      ),
    );
  }
}
