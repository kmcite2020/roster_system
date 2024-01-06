import '../../main.dart';

part 'rosters.freezed.dart';
part 'rosters.g.dart';

@freezed
class Rosters with _$Rosters {
  const factory Rosters({
    @Default(<String, Roster>{}) final Map<String, Roster> cache,
  }) = _Rosters;

  factory Rosters.fromJson(Map<String, dynamic> json) =>
      _$RostersFromJson(json);
}
