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
  String get rosterName => throw _privateConstructorUsedError;
  @DateTimeRangeConverter()
  DateTimeRange get withEffectFromTo => throw _privateConstructorUsedError;
  String get notificationNumber => throw _privateConstructorUsedError;
  List<String> get copyForwardedTo => throw _privateConstructorUsedError;
  String get signedBy => throw _privateConstructorUsedError;

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
      String rosterName,
      @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
      String notificationNumber,
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
    Object? rosterName = null,
    Object? withEffectFromTo = null,
    Object? notificationNumber = null,
    Object? copyForwardedTo = null,
    Object? signedBy = null,
  }) {
    return _then(_value.copyWith(
      rosterEntries: null == rosterEntries
          ? _value.rosterEntries
          : rosterEntries // ignore: cast_nullable_to_non_nullable
              as Map<String, RosterEntry>,
      rosterName: null == rosterName
          ? _value.rosterName
          : rosterName // ignore: cast_nullable_to_non_nullable
              as String,
      withEffectFromTo: null == withEffectFromTo
          ? _value.withEffectFromTo
          : withEffectFromTo // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      notificationNumber: null == notificationNumber
          ? _value.notificationNumber
          : notificationNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      String rosterName,
      @DateTimeRangeConverter() DateTimeRange withEffectFromTo,
      String notificationNumber,
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
    Object? rosterName = null,
    Object? withEffectFromTo = null,
    Object? notificationNumber = null,
    Object? copyForwardedTo = null,
    Object? signedBy = null,
  }) {
    return _then(_$RosterImpl(
      rosterEntries: null == rosterEntries
          ? _value._rosterEntries
          : rosterEntries // ignore: cast_nullable_to_non_nullable
              as Map<String, RosterEntry>,
      rosterName: null == rosterName
          ? _value.rosterName
          : rosterName // ignore: cast_nullable_to_non_nullable
              as String,
      withEffectFromTo: null == withEffectFromTo
          ? _value.withEffectFromTo
          : withEffectFromTo // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      notificationNumber: null == notificationNumber
          ? _value.notificationNumber
          : notificationNumber // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.rosterName = '',
      @DateTimeRangeConverter() required this.withEffectFromTo,
      this.notificationNumber = '',
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
  final String rosterName;
  @override
  @DateTimeRangeConverter()
  final DateTimeRange withEffectFromTo;
  @override
  @JsonKey()
  final String notificationNumber;
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
    return 'Roster(rosterEntries: $rosterEntries, rosterName: $rosterName, withEffectFromTo: $withEffectFromTo, notificationNumber: $notificationNumber, copyForwardedTo: $copyForwardedTo, signedBy: $signedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterImpl &&
            const DeepCollectionEquality()
                .equals(other._rosterEntries, _rosterEntries) &&
            (identical(other.rosterName, rosterName) ||
                other.rosterName == rosterName) &&
            (identical(other.withEffectFromTo, withEffectFromTo) ||
                other.withEffectFromTo == withEffectFromTo) &&
            (identical(other.notificationNumber, notificationNumber) ||
                other.notificationNumber == notificationNumber) &&
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
      rosterName,
      withEffectFromTo,
      notificationNumber,
      const DeepCollectionEquality().hash(_copyForwardedTo),
      signedBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RosterImplCopyWith<_$RosterImpl> get copyWith =>
      __$$RosterImplCopyWithImpl<_$RosterImpl>(this, _$identity);

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
      final String rosterName,
      @DateTimeRangeConverter() required final DateTimeRange withEffectFromTo,
      final String notificationNumber,
      final List<String> copyForwardedTo,
      final String signedBy}) = _$RosterImpl;

  factory _Roster.fromJson(Map<String, dynamic> json) = _$RosterImpl.fromJson;

  @override
  Map<String, RosterEntry> get rosterEntries;
  @override
  String get rosterName;
  @override
  @DateTimeRangeConverter()
  DateTimeRange get withEffectFromTo;
  @override
  String get notificationNumber;
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
  String get id => throw _privateConstructorUsedError;
  DayType get day => throw _privateConstructorUsedError;
  ShiftType get shift => throw _privateConstructorUsedError;
  Map<String, MedicalOfficer> get medicalOfficers =>
      throw _privateConstructorUsedError;

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
      {String id,
      DayType day,
      ShiftType shift,
      Map<String, MedicalOfficer> medicalOfficers});
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
    Object? id = null,
    Object? day = null,
    Object? shift = null,
    Object? medicalOfficers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      medicalOfficers: null == medicalOfficers
          ? _value.medicalOfficers
          : medicalOfficers // ignore: cast_nullable_to_non_nullable
              as Map<String, MedicalOfficer>,
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
      {String id,
      DayType day,
      ShiftType shift,
      Map<String, MedicalOfficer> medicalOfficers});
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
    Object? id = null,
    Object? day = null,
    Object? shift = null,
    Object? medicalOfficers = null,
  }) {
    return _then(_$RosterEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      medicalOfficers: null == medicalOfficers
          ? _value._medicalOfficers
          : medicalOfficers // ignore: cast_nullable_to_non_nullable
              as Map<String, MedicalOfficer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RosterEntryImpl implements _RosterEntry {
  const _$RosterEntryImpl(
      {this.id = '',
      this.day = DayType.mon,
      this.shift = ShiftType.morning,
      final Map<String, MedicalOfficer> medicalOfficers =
          const <String, MedicalOfficer>{}})
      : _medicalOfficers = medicalOfficers;

  factory _$RosterEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RosterEntryImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final DayType day;
  @override
  @JsonKey()
  final ShiftType shift;
  final Map<String, MedicalOfficer> _medicalOfficers;
  @override
  @JsonKey()
  Map<String, MedicalOfficer> get medicalOfficers {
    if (_medicalOfficers is EqualUnmodifiableMapView) return _medicalOfficers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_medicalOfficers);
  }

  @override
  String toString() {
    return 'RosterEntry(id: $id, day: $day, shift: $shift, medicalOfficers: $medicalOfficers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            const DeepCollectionEquality()
                .equals(other._medicalOfficers, _medicalOfficers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, day, shift,
      const DeepCollectionEquality().hash(_medicalOfficers));

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
      {final String id,
      final DayType day,
      final ShiftType shift,
      final Map<String, MedicalOfficer> medicalOfficers}) = _$RosterEntryImpl;

  factory _RosterEntry.fromJson(Map<String, dynamic> json) =
      _$RosterEntryImpl.fromJson;

  @override
  String get id;
  @override
  DayType get day;
  @override
  ShiftType get shift;
  @override
  Map<String, MedicalOfficer> get medicalOfficers;
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
  List<MedicalOfficer> get medicalOfficers =>
      throw _privateConstructorUsedError;

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
  $Res call({List<MedicalOfficer> medicalOfficers});
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
    Object? medicalOfficers = null,
  }) {
    return _then(_value.copyWith(
      medicalOfficers: null == medicalOfficers
          ? _value.medicalOfficers
          : medicalOfficers // ignore: cast_nullable_to_non_nullable
              as List<MedicalOfficer>,
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
  $Res call({List<MedicalOfficer> medicalOfficers});
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
    Object? medicalOfficers = null,
  }) {
    return _then(_$MedicalOfficersImpl(
      medicalOfficers: null == medicalOfficers
          ? _value._medicalOfficers
          : medicalOfficers // ignore: cast_nullable_to_non_nullable
              as List<MedicalOfficer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalOfficersImpl implements _MedicalOfficers {
  const _$MedicalOfficersImpl(
      {final List<MedicalOfficer> medicalOfficers = const <MedicalOfficer>[]})
      : _medicalOfficers = medicalOfficers;

  factory _$MedicalOfficersImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalOfficersImplFromJson(json);

  final List<MedicalOfficer> _medicalOfficers;
  @override
  @JsonKey()
  List<MedicalOfficer> get medicalOfficers {
    if (_medicalOfficers is EqualUnmodifiableListView) return _medicalOfficers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicalOfficers);
  }

  @override
  String toString() {
    return 'MedicalOfficers(medicalOfficers: $medicalOfficers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalOfficersImpl &&
            const DeepCollectionEquality()
                .equals(other._medicalOfficers, _medicalOfficers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_medicalOfficers));

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
  const factory _MedicalOfficers({final List<MedicalOfficer> medicalOfficers}) =
      _$MedicalOfficersImpl;

  factory _MedicalOfficers.fromJson(Map<String, dynamic> json) =
      _$MedicalOfficersImpl.fromJson;

  @override
  List<MedicalOfficer> get medicalOfficers;
  @override
  @JsonKey(ignore: true)
  _$$MedicalOfficersImplCopyWith<_$MedicalOfficersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
