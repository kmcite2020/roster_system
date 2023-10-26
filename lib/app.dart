part of 'main.dart';

class HomePage extends ReactiveStatelessWidget {
  static const routeName = '/';
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageMap[ConfigurationBloc.to.getPageIndex]?.body,
      bottomNavigationBar: NavigationBar(
        destinations: pageMap.values
            .map(
              (e) => NavigationDestination(
                icon: Icon(e.icon),
                label: e.label,
              ),
            )
            .toList(),
        onDestinationSelected: ConfigurationBloc.to.setPageIndex,
        selectedIndex: ConfigurationBloc.to.getPageIndex,
      ),
    );
  }
}

typedef NavbarBody = ({IconData icon, String label, Widget body});

final Map<int, NavbarBody> pageMap = {
  0: (
    icon: Icons.dashboard,
    label: 'Dashboard',
    body: const DashboardPage(),
  ),
  // 1: (
  //   icon: Icons.note,
  //   label: 'Rosters',
  //   body: const RosterSystemPage(),
  // ),
  1: (
    icon: Icons.supervised_user_circle,
    label: 'Officers',
    body: const OfficersPage(),
  ),
  2: (
    icon: Icons.supervised_user_circle,
    label: 'Officers',
    body: const OfficersPage(),
  ),
  3: (
    icon: Icons.settings,
    label: 'Settings',
    body: const SettingsPage(),
  ),
};
