// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RosterImpl _$$RosterImplFromJson(Map<String, dynamic> json) => _$RosterImpl(
      rosterEntries: (json['rosterEntries'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, RosterEntry.fromJson(e)),
          ) ??
          const <String, RosterEntry>{},
      rosterName: json['rosterName'] as String? ?? '',
      withEffectFromTo: const DateTimeRangeConverter()
          .fromJson(json['withEffectFromTo'] as Map<String, int>),
      notificationNumber: json['notificationNumber'] as String? ?? '',
      copyForwardedTo: (json['copyForwardedTo'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      signedBy: json['signedBy'] as String? ?? '',
    );

Map<String, dynamic> _$$RosterImplToJson(_$RosterImpl instance) =>
    <String, dynamic>{
      'rosterEntries': instance.rosterEntries,
      'rosterName': instance.rosterName,
      'withEffectFromTo':
          const DateTimeRangeConverter().toJson(instance.withEffectFromTo),
      'notificationNumber': instance.notificationNumber,
      'copyForwardedTo': instance.copyForwardedTo,
      'signedBy': instance.signedBy,
    };

_$RosterEntryImpl _$$RosterEntryImplFromJson(Map<String, dynamic> json) =>
    _$RosterEntryImpl(
      id: json['id'] as String? ?? '',
      day: $enumDecodeNullable(_$DayTypeEnumMap, json['day']) ?? DayType.mon,
      shift: $enumDecodeNullable(_$ShiftTypeEnumMap, json['shift']) ??
          ShiftType.morning,
      medicalOfficers: (json['medicalOfficers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, MedicalOfficer.fromJson(e)),
          ) ??
          const <String, MedicalOfficer>{},
    );

Map<String, dynamic> _$$RosterEntryImplToJson(_$RosterEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': _$DayTypeEnumMap[instance.day]!,
      'shift': _$ShiftTypeEnumMap[instance.shift]!,
      'medicalOfficers': instance.medicalOfficers,
    };

const _$DayTypeEnumMap = {
  DayType.mon: 'mon',
  DayType.tue: 'tue',
  DayType.wed: 'wed',
  DayType.thu: 'thu',
  DayType.fri: 'fri',
  DayType.sat: 'sat',
  DayType.sun: 'sun',
};

const _$ShiftTypeEnumMap = {
  ShiftType.morning: 'morning',
  ShiftType.evening: 'evening',
  ShiftType.night: 'night',
};

_$MedicalOfficerImpl _$$MedicalOfficerImplFromJson(Map<String, dynamic> json) =>
    _$MedicalOfficerImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      scale: json['scale'] as int? ?? 17,
      totalDuties: json['totalDuties'] as int? ?? 30,
    );

Map<String, dynamic> _$$MedicalOfficerImplToJson(
        _$MedicalOfficerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'scale': instance.scale,
      'totalDuties': instance.totalDuties,
    };

_$MedicalOfficersImpl _$$MedicalOfficersImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicalOfficersImpl(
      medicalOfficers: (json['medicalOfficers'] as List<dynamic>?)
              ?.map(MedicalOfficer.fromJson)
              .toList() ??
          const <MedicalOfficer>[],
    );

Map<String, dynamic> _$$MedicalOfficersImplToJson(
        _$MedicalOfficersImpl instance) =>
    <String, dynamic>{
      'medicalOfficers': instance.medicalOfficers,
    };
