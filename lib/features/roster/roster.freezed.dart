// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Roster _$RosterFromJson(Map<String, dynamic> json) {
  return _Roster.fromJson(json);
}

/// @nodoc
mixin _$Roster {
  Map<String, RosterEntry> get rosterEntries =>
      throw _privateConstructorUsedError;
  String get rosterID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @DateTimeRangeConverter()
  DateTimeRange get withEffectFromTo => throw _privateConstructorUsedError;
  List<String> get copyForwardedTo => throw _privateConstructorUsedError;
  String get signedBy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Roster value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Roster value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Roster value)? raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RosterCopyWith<Roster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosterCopyWith<$Res> {
  factory $RosterCopyWith(Roster value, $Res Function(Roster) then) =
      _$RosterCopyWithImpl<$Res, Roster>;
  @useResult
  $Res call(
      {Map<String, RosterEntry> rosterEntries,
      String rosterID,
      String name,
      @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
      List<String> copyForwardedTo,
      String signedBy});
}

/// @nodoc
class _$RosterCopyWithImpl<$Res, $Val extends Roster>
    implements $RosterCopyWith<$Res> {
  _$RosterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rosterEntries = null,
    Object? rosterID = null,
    Object? name = null,
    Object? withEffectFromTo = null,
    Object? copyForwardedTo = null,
    Object? signedBy = null,
  }) {
    return _then(_value.copyWith(
      rosterEntries: null == rosterEntries
          ? _value.rosterEntries
          : rosterEntries // ignore: cast_nullable_to_non_nullable
              as Map<String, RosterEntry>,
      rosterID: null == rosterID
          ? _value.rosterID
          : rosterID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      withEffectFromTo: null == withEffectFromTo
          ? _value.withEffectFromTo
          : withEffectFromTo // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      copyForwardedTo: null == copyForwardedTo
          ? _value.copyForwardedTo
          : copyForwardedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      signedBy: null == signedBy
          ? _value.signedBy
          : signedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RosterImplCopyWith<$Res> implements $RosterCopyWith<$Res> {
  factory _$$RosterImplCopyWith(
          _$RosterImpl value, $Res Function(_$RosterImpl) then) =
      __$$RosterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, RosterEntry> rosterEntries,
      String rosterID,
      String name,
      @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
      List<String> copyForwardedTo,
      String signedBy});
}

/// @nodoc
class __$$RosterImplCopyWithImpl<$Res>
    extends _$RosterCopyWithImpl<$Res, _$RosterImpl>
    implements _$$RosterImplCopyWith<$Res> {
  __$$RosterImplCopyWithImpl(
      _$RosterImpl _value, $Res Function(_$RosterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rosterEntries = null,
    Object? rosterID = null,
    Object? name = null,
    Object? withEffectFromTo = null,
    Object? copyForwardedTo = null,
    Object? signedBy = null,
  }) {
    return _then(_$RosterImpl(
      rosterEntries: null == rosterEntries
          ? _value._rosterEntries
          : rosterEntries // ignore: cast_nullable_to_non_nullable
              as Map<String, RosterEntry>,
      rosterID: null == rosterID
          ? _value.rosterID
          : rosterID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      withEffectFromTo: null == withEffectFromTo
          ? _value.withEffectFromTo
          : withEffectFromTo // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      copyForwardedTo: null == copyForwardedTo
          ? _value._copyForwardedTo
          : copyForwardedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
      signedBy: null == signedBy
          ? _value.signedBy
          : signedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RosterImpl implements _Roster {
  const _$RosterImpl(
      {final Map<String, RosterEntry> rosterEntries =
          const <String, RosterEntry>{},
      this.rosterID = '',
      this.name = '',
      @DateTimeRangeConverter() required this.withEffectFromTo,
      final List<String> copyForwardedTo = const <String>[],
      this.signedBy = ''})
      : _rosterEntries = rosterEntries,
        _copyForwardedTo = copyForwardedTo;

  factory _$RosterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RosterImplFromJson(json);

  final Map<String, RosterEntry> _rosterEntries;
  @override
  @JsonKey()
  Map<String, RosterEntry> get rosterEntries {
    if (_rosterEntries is EqualUnmodifiableMapView) return _rosterEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rosterEntries);
  }

  @override
  @JsonKey()
  final String rosterID;
  @override
  @JsonKey()
  final String name;
  @override
  @DateTimeRangeConverter()
  final DateTimeRange withEffectFromTo;
  final List<String> _copyForwardedTo;
  @override
  @JsonKey()
  List<String> get copyForwardedTo {
    if (_copyForwardedTo is EqualUnmodifiableListView) return _copyForwardedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_copyForwardedTo);
  }

  @override
  @JsonKey()
  final String signedBy;

  @override
  String toString() {
    return 'Roster.raw(rosterEntries: $rosterEntries, rosterID: $rosterID, name: $name, withEffectFromTo: $withEffectFromTo, copyForwardedTo: $copyForwardedTo, signedBy: $signedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterImpl &&
            const DeepCollectionEquality()
                .equals(other._rosterEntries, _rosterEntries) &&
            (identical(other.rosterID, rosterID) ||
                other.rosterID == rosterID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.withEffectFromTo, withEffectFromTo) ||
                other.withEffectFromTo == withEffectFromTo) &&
            const DeepCollectionEquality()
                .equals(other._copyForwardedTo, _copyForwardedTo) &&
            (identical(other.signedBy, signedBy) ||
                other.signedBy == signedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rosterEntries),
      rosterID,
      name,
      withEffectFromTo,
      const DeepCollectionEquality().hash(_copyForwardedTo),
      signedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RosterImplCopyWith<_$RosterImpl> get copyWith =>
      __$$RosterImplCopyWithImpl<_$RosterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)
        raw,
  }) {
    return raw(rosterEntries, rosterID, name, withEffectFromTo, copyForwardedTo,
        signedBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)?
        raw,
  }) {
    return raw?.call(rosterEntries, rosterID, name, withEffectFromTo,
        copyForwardedTo, signedBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, RosterEntry> rosterEntries,
            String rosterID,
            String name,
            @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
            List<String> copyForwardedTo,
            String signedBy)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(rosterEntries, rosterID, name, withEffectFromTo,
          copyForwardedTo, signedBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Roster value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Roster value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Roster value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RosterImplToJson(
      this,
    );
  }
}

abstract class _Roster implements Roster {
  const factory _Roster(
      {final Map<String, RosterEntry> rosterEntries,
      final String rosterID,
      final String name,
      @DateTimeRangeConverter() required final DateTimeRange withEffectFromTo,
      final List<String> copyForwardedTo,
      final String signedBy}) = _$RosterImpl;

  factory _Roster.fromJson(Map<String, dynamic> json) = _$RosterImpl.fromJson;

  @override
  Map<String, RosterEntry> get rosterEntries;
  @override
  String get rosterID;
  @override
  String get name;
  @override
  @DateTimeRangeConverter()
  DateTimeRange get withEffectFromTo;
  @override
  List<String> get copyForwardedTo;
  @override
  String get signedBy;
  @override
  @JsonKey(ignore: true)
  _$$RosterImplCopyWith<_$RosterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RosterEntry _$RosterEntryFromJson(Map<String, dynamic> json) {
  return _RosterEntry.fromJson(json);
}

/// @nodoc
mixin _$RosterEntry {
  String get rosterEntryID => throw _privateConstructorUsedError;
  DayType get dayType => throw _privateConstructorUsedError;
  ShiftType get shiftType => throw _privateConstructorUsedError;
  List<String> get medicalOfficerIDs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RosterEntryCopyWith<RosterEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosterEntryCopyWith<$Res> {
  factory $RosterEntryCopyWith(
          RosterEntry value, $Res Function(RosterEntry) then) =
      _$RosterEntryCopyWithImpl<$Res, RosterEntry>;
  @useResult
  $Res call(
      {String rosterEntryID,
      DayType dayType,
      ShiftType shiftType,
      List<String> medicalOfficerIDs});
}

/// @nodoc
class _$RosterEntryCopyWithImpl<$Res, $Val extends RosterEntry>
    implements $RosterEntryCopyWith<$Res> {
  _$RosterEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rosterEntryID = null,
    Object? dayType = null,
    Object? shiftType = null,
    Object? medicalOfficerIDs = null,
  }) {
    return _then(_value.copyWith(
      rosterEntryID: null == rosterEntryID
          ? _value.rosterEntryID
          : rosterEntryID // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      medicalOfficerIDs: null == medicalOfficerIDs
          ? _value.medicalOfficerIDs
          : medicalOfficerIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RosterEntryImplCopyWith<$Res>
    implements $RosterEntryCopyWith<$Res> {
  factory _$$RosterEntryImplCopyWith(
          _$RosterEntryImpl value, $Res Function(_$RosterEntryImpl) then) =
      __$$RosterEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rosterEntryID,
      DayType dayType,
      ShiftType shiftType,
      List<String> medicalOfficerIDs});
}

/// @nodoc
class __$$RosterEntryImplCopyWithImpl<$Res>
    extends _$RosterEntryCopyWithImpl<$Res, _$RosterEntryImpl>
    implements _$$RosterEntryImplCopyWith<$Res> {
  __$$RosterEntryImplCopyWithImpl(
      _$RosterEntryImpl _value, $Res Function(_$RosterEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rosterEntryID = null,
    Object? dayType = null,
    Object? shiftType = null,
    Object? medicalOfficerIDs = null,
  }) {
    return _then(_$RosterEntryImpl(
      rosterEntryID: null == rosterEntryID
          ? _value.rosterEntryID
          : rosterEntryID // ignore: cast_nullable_to_non_nullable
              as String,
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      medicalOfficerIDs: null == medicalOfficerIDs
          ? _value._medicalOfficerIDs
          : medicalOfficerIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RosterEntryImpl implements _RosterEntry {
  const _$RosterEntryImpl(
      {this.rosterEntryID = '',
      this.dayType = DayType.mon,
      this.shiftType = ShiftType.morning,
      final List<String> medicalOfficerIDs = const <String>[]})
      : _medicalOfficerIDs = medicalOfficerIDs;

  factory _$RosterEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RosterEntryImplFromJson(json);

  @override
  @JsonKey()
  final String rosterEntryID;
  @override
  @JsonKey()
  final DayType dayType;
  @override
  @JsonKey()
  final ShiftType shiftType;
  final List<String> _medicalOfficerIDs;
  @override
  @JsonKey()
  List<String> get medicalOfficerIDs {
    if (_medicalOfficerIDs is EqualUnmodifiableListView)
      return _medicalOfficerIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicalOfficerIDs);
  }

  @override
  String toString() {
    return 'RosterEntry(rosterEntryID: $rosterEntryID, dayType: $dayType, shiftType: $shiftType, medicalOfficerIDs: $medicalOfficerIDs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterEntryImpl &&
            (identical(other.rosterEntryID, rosterEntryID) ||
                other.rosterEntryID == rosterEntryID) &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType) &&
            const DeepCollectionEquality()
                .equals(other._medicalOfficerIDs, _medicalOfficerIDs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rosterEntryID, dayType,
      shiftType, const DeepCollectionEquality().hash(_medicalOfficerIDs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RosterEntryImplCopyWith<_$RosterEntryImpl> get copyWith =>
      __$$RosterEntryImplCopyWithImpl<_$RosterEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RosterEntryImplToJson(
      this,
    );
  }
}

abstract class _RosterEntry implements RosterEntry {
  const factory _RosterEntry(
      {final String rosterEntryID,
      final DayType dayType,
      final ShiftType shiftType,
      final List<String> medicalOfficerIDs}) = _$RosterEntryImpl;

  factory _RosterEntry.fromJson(Map<String, dynamic> json) =
      _$RosterEntryImpl.fromJson;

  @override
  String get rosterEntryID;
  @override
  DayType get dayType;
  @override
  ShiftType get shiftType;
  @override
  List<String> get medicalOfficerIDs;
  @override
  @JsonKey(ignore: true)
  _$$RosterEntryImplCopyWith<_$RosterEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicalOfficer _$MedicalOfficerFromJson(Map<String, dynamic> json) {
  return _MedicalOfficer.fromJson(json);
}

/// @nodoc
mixin _$MedicalOfficer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get scale => throw _privateConstructorUsedError;
  int get totalDuties => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalOfficerCopyWith<MedicalOfficer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalOfficerCopyWith<$Res> {
  factory $MedicalOfficerCopyWith(
          MedicalOfficer value, $Res Function(MedicalOfficer) then) =
      _$MedicalOfficerCopyWithImpl<$Res, MedicalOfficer>;
  @useResult
  $Res call({String id, String name, int scale, int totalDuties});
}

/// @nodoc
class _$MedicalOfficerCopyWithImpl<$Res, $Val extends MedicalOfficer>
    implements $MedicalOfficerCopyWith<$Res> {
  _$MedicalOfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? scale = null,
    Object? totalDuties = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuties: null == totalDuties
          ? _value.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalOfficerImplCopyWith<$Res>
    implements $MedicalOfficerCopyWith<$Res> {
  factory _$$MedicalOfficerImplCopyWith(_$MedicalOfficerImpl value,
          $Res Function(_$MedicalOfficerImpl) then) =
      __$$MedicalOfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int scale, int totalDuties});
}

/// @nodoc
class __$$MedicalOfficerImplCopyWithImpl<$Res>
    extends _$MedicalOfficerCopyWithImpl<$Res, _$MedicalOfficerImpl>
    implements _$$MedicalOfficerImplCopyWith<$Res> {
  __$$MedicalOfficerImplCopyWithImpl(
      _$MedicalOfficerImpl _value, $Res Function(_$MedicalOfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? scale = null,
    Object? totalDuties = null,
  }) {
    return _then(_$MedicalOfficerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuties: null == totalDuties
          ? _value.totalDuties
          : totalDuties // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalOfficerImpl extends _MedicalOfficer {
  const _$MedicalOfficerImpl(
      {this.id = '', this.name = '', this.scale = 17, this.totalDuties = 30})
      : super._();

  factory _$MedicalOfficerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalOfficerImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int scale;
  @override
  @JsonKey()
  final int totalDuties;

  @override
  String toString() {
    return 'MedicalOfficer(id: $id, name: $name, scale: $scale, totalDuties: $totalDuties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalOfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.totalDuties, totalDuties) ||
                other.totalDuties == totalDuties));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, scale, totalDuties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalOfficerImplCopyWith<_$MedicalOfficerImpl> get copyWith =>
      __$$MedicalOfficerImplCopyWithImpl<_$MedicalOfficerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalOfficerImplToJson(
      this,
    );
  }
}

abstract class _MedicalOfficer extends MedicalOfficer {
  const factory _MedicalOfficer(
      {final String id,
      final String name,
      final int scale,
      final int totalDuties}) = _$MedicalOfficerImpl;
  const _MedicalOfficer._() : super._();

  factory _MedicalOfficer.fromJson(Map<String, dynamic> json) =
      _$MedicalOfficerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get scale;
  @override
  int get totalDuties;
  @override
  @JsonKey(ignore: true)
  _$$MedicalOfficerImplCopyWith<_$MedicalOfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MedicalOfficers _$MedicalOfficersFromJson(Map<String, dynamic> json) {
  return _MedicalOfficers.fromJson(json);
}

/// @nodoc
mixin _$MedicalOfficers {
  Map<String, MedicalOfficer> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalOfficersCopyWith<MedicalOfficers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalOfficersCopyWith<$Res> {
  factory $MedicalOfficersCopyWith(
          MedicalOfficers value, $Res Function(MedicalOfficers) then) =
      _$MedicalOfficersCopyWithImpl<$Res, MedicalOfficers>;
  @useResult
  $Res call({Map<String, MedicalOfficer> cache});
}

/// @nodoc
class _$MedicalOfficersCopyWithImpl<$Res, $Val extends MedicalOfficers>
    implements $MedicalOfficersCopyWith<$Res> {
  _$MedicalOfficersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, MedicalOfficer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalOfficersImplCopyWith<$Res>
    implements $MedicalOfficersCopyWith<$Res> {
  factory _$$MedicalOfficersImplCopyWith(_$MedicalOfficersImpl value,
          $Res Function(_$MedicalOfficersImpl) then) =
      __$$MedicalOfficersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, MedicalOfficer> cache});
}

/// @nodoc
class __$$MedicalOfficersImplCopyWithImpl<$Res>
    extends _$MedicalOfficersCopyWithImpl<$Res, _$MedicalOfficersImpl>
    implements _$$MedicalOfficersImplCopyWith<$Res> {
  __$$MedicalOfficersImplCopyWithImpl(
      _$MedicalOfficersImpl _value, $Res Function(_$MedicalOfficersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$MedicalOfficersImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, MedicalOfficer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalOfficersImpl implements _MedicalOfficers {
  const _$MedicalOfficersImpl(
      {final Map<String, MedicalOfficer> cache =
          const <String, MedicalOfficer>{}})
      : _cache = cache;

  factory _$MedicalOfficersImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalOfficersImplFromJson(json);

  final Map<String, MedicalOfficer> _cache;
  @override
  @JsonKey()
  Map<String, MedicalOfficer> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'MedicalOfficers(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalOfficersImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalOfficersImplCopyWith<_$MedicalOfficersImpl> get copyWith =>
      __$$MedicalOfficersImplCopyWithImpl<_$MedicalOfficersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalOfficersImplToJson(
      this,
    );
  }
}

abstract class _MedicalOfficers implements MedicalOfficers {
  const factory _MedicalOfficers({final Map<String, MedicalOfficer> cache}) =
      _$MedicalOfficersImpl;

  factory _MedicalOfficers.fromJson(Map<String, dynamic> json) =
      _$MedicalOfficersImpl.fromJson;

  @override
  Map<String, MedicalOfficer> get cache;
  @override
  @JsonKey(ignore: true)
  _$$MedicalOfficersImplCopyWith<_$MedicalOfficersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
