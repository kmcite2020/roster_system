// import 'package:flutter/material.dart';
// import 'package:project_roster/presentation/blocs/blocs.dart';
// import 'package:project_roster/presentation/ui/ui.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

import 'package:flutter/material.dart';
import 'package:roster_system/presentation/features/ui.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../pages/rosters_ui/rosters_bloc.dart';

class RostersPage extends ReactiveStatelessWidget {
  const RostersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Rosters'.text(),
      ),
      body: ListView.builder(
        itemCount: rostersBloc.rosters.length,
        itemBuilder: (context, index) => rostersBloc.rosters[index].text(),
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              // navigator.to(Routes.days);
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
