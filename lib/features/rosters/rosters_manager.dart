import 'dart:convert';

import 'package:roster_system/features/roster/roster.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'rosters.dart';

final rostersManager = RostersManager();

class RostersManager {
  final rostersRM = RM.inject(
    () => Rosters(),
    persist: () => PersistState(
      key: 'rosters',
      toJson: (s) => jsonEncode(s.toJson()),
      fromJson: (json) => Rosters.fromJson(jsonDecode(json)),
    ),
  );

  Rosters get state => rostersRM.state;
  set state(Rosters _state) => rostersRM.state = _state;

  void setRoster(Roster roster) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[roster.rosterID] = roster,
    );
  }

  void removeRoster(Roster roster) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(roster.rosterID),
    );
  }

  Roster id(String rosterID) {
    return rostersRM.state.cache[rosterID]!;
  }
}
