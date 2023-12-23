import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roster.freezed.dart';
part 'roster.g.dart';

@freezed
class Roster with _$Roster {
  const factory Roster({
    @Default(<String, RosterEntry>{})
    final Map<String, RosterEntry> rosterEntries,
    @Default('') final String rosterName,
    @DateTimeRangeConverter() required final DateTimeRange withEffectFromTo,
    @Default('') final String notificationNumber,
    @Default(<String>[]) final List<String> copyForwardedTo,
    @Default('') final String signedBy,
  }) = _Roster;
  factory Roster.fromJson(json) => _$RosterFromJson(json);
}

@freezed
class RosterEntry with _$RosterEntry {
  const factory RosterEntry({
    @Default('') final String id,
    @Default(DayType.mon) final DayType day,
    @Default(ShiftType.morning) final ShiftType shift,
    @Default(<String, MedicalOfficer>{})
    final Map<String, MedicalOfficer> medicalOfficers,
  }) = _RosterEntry;

  factory RosterEntry.fromJson(json) => _$RosterEntryFromJson(json);
}

enum ShiftType { morning, evening, night }

enum DayType { mon, tue, wed, thu, fri, sat, sun }

@freezed
class MedicalOfficer with _$MedicalOfficer {
  const factory MedicalOfficer({
    @Default('') final String id,
    @Default('') final String name,
    @Default(17) final int scale,
    @Default(30) final int totalDuties,
  }) = _MedicalOfficer;

  factory MedicalOfficer.fromJson(json) => _$MedicalOfficerFromJson(json);
  const MedicalOfficer._();
}

@freezed
class MedicalOfficers with _$MedicalOfficers {
  const factory MedicalOfficers({
    @Default(<MedicalOfficer>[]) final List<MedicalOfficer> medicalOfficers,
  }) = _MedicalOfficers;

  factory MedicalOfficers.fromJson(json) => _$MedicalOfficersFromJson(json);
}

class DateTimeRangeConverter
    implements JsonConverter<DateTimeRange, Map<String, int>> {
  const DateTimeRangeConverter();
  @override
  DateTimeRange fromJson(Map<String, int> json) => DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(json['start']!),
        end: DateTime.fromMillisecondsSinceEpoch(json['end']!),
      );

  @override
  Map<String, int> toJson(DateTimeRange object) => {
        'start': object.start.millisecondsSinceEpoch,
        'end': object.end.millisecondsSinceEpoch,
      };
}
