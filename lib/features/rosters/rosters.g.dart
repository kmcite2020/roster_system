// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rosters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RostersImpl _$$RostersImplFromJson(Map<String, dynamic> json) =>
    _$RostersImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Roster.fromJson(e)),
          ) ??
          const <String, Roster>{},
    );

Map<String, dynamic> _$$RostersImplToJson(_$RostersImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
