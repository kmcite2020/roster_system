import 'package:roster_system/features/roster/components/roster_builder.dart';
import 'package:roster_system/features/roster/pages/roster_manager_page.dart';

import '../../../main.dart';

class RostersPage extends UI {
  const RostersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Rosters'.text(),
        actions: [
          IconButton(
            onPressed: () {
              rostersManager.setRoster(Roster());
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: MapBuilder(
        map: rostersManager.state.cache,
        builder: (_, rosters) {
          return ListView.builder(
            itemCount: rosters.length,
            itemBuilder: (context, index) {
              final roster = rosters[index];
              return RosterTile(rosterID: roster.rosterID);
            },
          );
        },
      ),
    );
  }
}

class RosterTile extends StatelessWidget {
  const RosterTile({super.key, required this.rosterID});

  final String rosterID;

  @override
  Widget build(BuildContext context) {
    return RosterBuilder(
      rosterID: rosterID,
      builder: (roster) {
        return ListTile(
          title: TextFormField(
            initialValue: roster.name,
            onChanged: (value) {
              rostersManager.setRoster(
                roster.copyWith(name: value),
              );
            },
          ),
          subtitle: Column(
            children: [
              roster.text(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      navigator.to(RosterPage(rosterID: rosterID));
                    },
                    icon: Icon(Icons.view_timeline),
                  ),
                  IconButton(
                    onPressed: () {
                      navigator.to(RosterManagerPage(rosterID: rosterID));
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class MapBuilder<K, V> extends UI {
  final Map<K, V> map;
  final Widget Function(
    List<K> keys,
    List<V> values,
  ) builder;
  MapBuilder({
    required this.map,
    required this.builder,
  });
  @override
  Widget build(BuildContext context) {
    return builder(
      map.keys.toList(),
      map.values.toList(),
    );
  }
}
