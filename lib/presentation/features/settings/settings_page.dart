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
              (e) {
                return DropdownMenuItem(
                  child: e.name.toUpperCase().text(),
                  value: e,
                );
              },
            ).toList(),
            onChanged: settingsManager.setThemeMode,
          ).pad(),
          DropdownButtonFormField(
            value: settingsManager.materialColor,
            items: Colors.primaries.map(
              (e) {
                return DropdownMenuItem(
                  child: e.colorName.toUpperCase().text(),
                  value: e,
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
