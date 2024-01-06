import 'package:roster_system/features/roster/roster.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'rosters.dart';

final rostersManager = RostersManager();

class RostersManager {
  final rostersRM = RM.inject(() => Rosters());

  Rosters get state => rostersRM.state;
  set state(Rosters _state) => rostersRM.state = _state;

  void setRoster(Roster roster) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[roster.rosterName] = roster,
    );
  }

  void removeRoster(Roster roster) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(roster.rosterName),
    );
  }

  Roster fromName(String rosterName) {
    return rostersRM.state.cache[rosterName]!;
  }
}
