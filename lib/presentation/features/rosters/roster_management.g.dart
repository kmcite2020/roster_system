// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roster_management.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RosterEntryImpl _$$RosterEntryImplFromJson(Map<String, dynamic> json) =>
    _$RosterEntryImpl(
      id: json['id'] as String,
      officerOne: json['officerOne'] as String,
      officerTwo: json['officerTwo'] as String,
      day: $enumDecode(_$DayTypeEnumMap, json['day']),
      shift: $enumDecode(_$ShiftTypeEnumMap, json['shift']),
      department: json['department'] as String,
    );

Map<String, dynamic> _$$RosterEntryImplToJson(_$RosterEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'officerOne': instance.officerOne,
      'officerTwo': instance.officerTwo,
      'day': _$DayTypeEnumMap[instance.day]!,
      'shift': _$ShiftTypeEnumMap[instance.shift]!,
      'department': instance.department,
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
