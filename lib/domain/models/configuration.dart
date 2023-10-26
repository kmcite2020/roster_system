part of 'models.dart';

class Configuration implements ToJson {
  int? _themeModeValue;
  int? _materialColorValue;
  double? _borderRadius;
  double? _padding;
  double? _textScaleFactor;
  int? _pageIndex;

  static String toSave(Configuration configuration) {
    return configuration.toJson();
  }

  double get borderRadius => _borderRadius ?? 0;
  set borderRadius(double? value) {
    _borderRadius = value;
  }

  ThemeMode get themeMode => ThemeMode.values[_themeModeValue ?? 0];
  set themeMode(ThemeMode value) {
    _themeModeValue = ThemeMode.values.indexOf(value);
  }

  double get textScaleFactor => _textScaleFactor ?? 1;
  set textScaleFactor(double value) {
    _textScaleFactor = value;
  }

  double get padding => _padding ?? 8;
  set padding(double value) {
    _padding = value;
  }

  int get pageIndex => _pageIndex ?? 0;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  MaterialColor get materialColor => Colors.primaries[_materialColorValue ?? 0];

  set materialColor(MaterialColor value) {
    _materialColorValue = Colors.primaries.indexOf(value);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_themeModeValue': _themeModeValue,
      '_materialColorValue': _materialColorValue,
      '_borderRadius': _borderRadius,
      '_padding': _padding,
      '_textScaleFactor': _textScaleFactor,
      '_pageIndex': _pageIndex,
    };
  }

  factory Configuration.fromMap(Map<String, dynamic> map) {
    return Configuration()
      .._themeModeValue = map['_themeModeValue']
      .._materialColorValue = map['_materialColorValue']
      .._borderRadius = map['_borderRadius']
      .._padding = map['_padding']
      .._textScaleFactor = map['_textScaleFactor']
      .._pageIndex = map['_pageIndex'];
  }

  String toJson() => json.encode(toMap());

  factory Configuration.fromJson(String source) =>
      Configuration.fromMap(json.decode(source) as Map<String, dynamic>);
  Configuration();
}

// @collection
// class Domain {
//   Settings settings = Settings();
//   // factory Domain.init() {
//   //   return Domain(
//   //     officers: {
//   //       '0': Officer(id: '0', officerName: 'DR. WU'),
//   //       '1': Officer(id: '1', officerName: 'DR. HWANG'),
//   //       '2': Officer(id: '2', officerName: 'DR. HEE'),
//   //       '3': Officer(id: '3', officerName: 'DR. CHAN'),
//   //     },
//   //     rosters: {
//   //       's': Roster(
//   //         id: 's',
//   //         rosterName: 'Surgical',
//   //         days: [
//   //           'mon',
//   //           'tue',
//   //           'wed',
//   //         ],
//   //       ),
//   //     },
//   //     days: {
//   //       'mon': Day.mon(
//   //         [],
//   //       ),
//   //       'tues': Day.mon(
//   //         [],
//   //       ),
//   //       'wed': Day.mon(
//   //         [],
//   //       ),
//   //       'thu': Day.mon(
//   //         [],
//   //       ),
//   //       'fri': Day.mon(
//   //         [],
//   //       ),
//   //       'sat': Day.mon(
//   //         [],
//   //       ),
//   //       'sun': Day.mon(
//   //         [],
//   //       ),
//   //     },
//   //     settings: Settings(),
//   //     shifts: {
//   //       'morning': Shift(shiftName: 'Morn', id: 'morning'),
//   //       'evening': Shift(shiftName: 'Morn', id: 'evening'),
//   //     },
//   //     departments: {},
//   //     managers: {},
//   //   );
//   // }
// }
