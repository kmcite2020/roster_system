import '../../../main.dart';

class RostersPage extends UI {
  const RostersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Rosters'.text(),
      ),
      body: ListView.builder(
        itemCount: rostersManager.state.cache.length,
        itemBuilder: (context, index) {
          final roster = rostersManager.state.cache.values.toList()[index];
          return ElevatedButton(
            onPressed: () {
              navigator.to(
                RosterPage(
                  rosterName: roster.rosterName,
                ),
              );
            },
            child: roster.text(),
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              rostersManager.setRoster(
                Roster().copyWith(rosterName: randomID),
              );
            },
            child: Icon(Icons.data_array_sharp),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.addRoster);
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
