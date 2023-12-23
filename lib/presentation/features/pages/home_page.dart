part of '../ui.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PROJECT ROSTER'.text(),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(DashboardPage());
            },
            label: 'Dashboard'.text(),
            icon: Icon(Icons.dashboard),
          ).pad(),
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.rosters);
            },
            label: 'Rosters'.text(),
            icon: Icon(Icons.note),
          ).pad(),
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.shifts);
            },
            label: 'Shifts'.text(),
            icon: Icon(Icons.shield),
          ).pad(),
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.days);
            },
            label: 'Days'.text(),
            icon: Icon(Icons.sunny),
          ).pad(),
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.doctors);
            },
            label: 'DOCTORS'.text(),
            icon: Icon(Icons.supervised_user_circle),
          ).pad(),
          FloatingActionButton.extended(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.settings);
            },
            label: 'SETTINGS'.text(),
            icon: Icon(Icons.settings),
          ).pad(),
        ],
      ),
    );
  }
}
