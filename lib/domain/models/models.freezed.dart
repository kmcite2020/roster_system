// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Roster {
  String get id => throw _privateConstructorUsedError;
  String get rosterName => throw _privateConstructorUsedError;
  List<Day> get days => throw _privateConstructorUsedError;
  String get scale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RosterCopyWith<Roster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RosterCopyWith<$Res> {
  factory $RosterCopyWith(Roster value, $Res Function(Roster) then) =
      _$RosterCopyWithImpl<$Res, Roster>;
  @useResult
  $Res call({String id, String rosterName, List<Day> days, String scale});
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
    Object? id = null,
    Object? rosterName = null,
    Object? days = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rosterName: null == rosterName
          ? _value.rosterName
          : rosterName // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
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
  $Res call({String id, String rosterName, List<Day> days, String scale});
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
    Object? id = null,
    Object? rosterName = null,
    Object? days = null,
    Object? scale = null,
  }) {
    return _then(_$RosterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rosterName: null == rosterName
          ? _value.rosterName
          : rosterName // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RosterImpl implements _Roster {
  const _$RosterImpl(
      {required this.id,
      required this.rosterName,
      required final List<Day> days,
      required this.scale})
      : _days = days;

  @override
  final String id;
  @override
  final String rosterName;
  final List<Day> _days;
  @override
  List<Day> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final String scale;

  @override
  String toString() {
    return 'Roster(id: $id, rosterName: $rosterName, days: $days, scale: $scale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rosterName, rosterName) ||
                other.rosterName == rosterName) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, rosterName,
      const DeepCollectionEquality().hash(_days), scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RosterImplCopyWith<_$RosterImpl> get copyWith =>
      __$$RosterImplCopyWithImpl<_$RosterImpl>(this, _$identity);
}

abstract class _Roster implements Roster {
  const factory _Roster(
      {required final String id,
      required final String rosterName,
      required final List<Day> days,
      required final String scale}) = _$RosterImpl;

  @override
  String get id;
  @override
  String get rosterName;
  @override
  List<Day> get days;
  @override
  String get scale;
  @override
  @JsonKey(ignore: true)
  _$$RosterImplCopyWith<_$RosterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Day {
  DayType get dayType => throw _privateConstructorUsedError;
  List<Shift> get shifts => throw _privateConstructorUsedError;
  String get scale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call({DayType dayType, List<Shift> shifts, String scale});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayType = null,
    Object? shifts = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DayType dayType, List<Shift> shifts, String scale});
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayType = null,
    Object? shifts = null,
    Object? scale = null,
  }) {
    return _then(_$DayImpl(
      dayType: null == dayType
          ? _value.dayType
          : dayType // ignore: cast_nullable_to_non_nullable
              as DayType,
      shifts: null == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DayImpl implements _Day {
  const _$DayImpl(
      {required this.dayType,
      required final List<Shift> shifts,
      required this.scale})
      : _shifts = shifts;

  @override
  final DayType dayType;
  final List<Shift> _shifts;
  @override
  List<Shift> get shifts {
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shifts);
  }

  @override
  final String scale;

  @override
  String toString() {
    return 'Day(dayType: $dayType, shifts: $shifts, scale: $scale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            (identical(other.dayType, dayType) || other.dayType == dayType) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayType,
      const DeepCollectionEquality().hash(_shifts), scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);
}

abstract class _Day implements Day {
  const factory _Day(
      {required final DayType dayType,
      required final List<Shift> shifts,
      required final String scale}) = _$DayImpl;

  @override
  DayType get dayType;
  @override
  List<Shift> get shifts;
  @override
  String get scale;
  @override
  @JsonKey(ignore: true)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Officer {
  String get id => throw _privateConstructorUsedError;
  String get officerName => throw _privateConstructorUsedError;
  String get shiftHours => throw _privateConstructorUsedError;
  String get scale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfficerCopyWith<Officer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficerCopyWith<$Res> {
  factory $OfficerCopyWith(Officer value, $Res Function(Officer) then) =
      _$OfficerCopyWithImpl<$Res, Officer>;
  @useResult
  $Res call({String id, String officerName, String shiftHours, String scale});
}

/// @nodoc
class _$OfficerCopyWithImpl<$Res, $Val extends Officer>
    implements $OfficerCopyWith<$Res> {
  _$OfficerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? officerName = null,
    Object? shiftHours = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      officerName: null == officerName
          ? _value.officerName
          : officerName // ignore: cast_nullable_to_non_nullable
              as String,
      shiftHours: null == shiftHours
          ? _value.shiftHours
          : shiftHours // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfficerImplCopyWith<$Res> implements $OfficerCopyWith<$Res> {
  factory _$$OfficerImplCopyWith(
          _$OfficerImpl value, $Res Function(_$OfficerImpl) then) =
      __$$OfficerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String officerName, String shiftHours, String scale});
}

/// @nodoc
class __$$OfficerImplCopyWithImpl<$Res>
    extends _$OfficerCopyWithImpl<$Res, _$OfficerImpl>
    implements _$$OfficerImplCopyWith<$Res> {
  __$$OfficerImplCopyWithImpl(
      _$OfficerImpl _value, $Res Function(_$OfficerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? officerName = null,
    Object? shiftHours = null,
    Object? scale = null,
  }) {
    return _then(_$OfficerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      officerName: null == officerName
          ? _value.officerName
          : officerName // ignore: cast_nullable_to_non_nullable
              as String,
      shiftHours: null == shiftHours
          ? _value.shiftHours
          : shiftHours // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OfficerImpl implements _Officer {
  const _$OfficerImpl(
      {required this.id,
      required this.officerName,
      required this.shiftHours,
      required this.scale});

  @override
  final String id;
  @override
  final String officerName;
  @override
  final String shiftHours;
  @override
  final String scale;

  @override
  String toString() {
    return 'Officer(id: $id, officerName: $officerName, shiftHours: $shiftHours, scale: $scale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfficerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.officerName, officerName) ||
                other.officerName == officerName) &&
            (identical(other.shiftHours, shiftHours) ||
                other.shiftHours == shiftHours) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, officerName, shiftHours, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfficerImplCopyWith<_$OfficerImpl> get copyWith =>
      __$$OfficerImplCopyWithImpl<_$OfficerImpl>(this, _$identity);
}

abstract class _Officer implements Officer {
  const factory _Officer(
      {required final String id,
      required final String officerName,
      required final String shiftHours,
      required final String scale}) = _$OfficerImpl;

  @override
  String get id;
  @override
  String get officerName;
  @override
  String get shiftHours;
  @override
  String get scale;
  @override
  @JsonKey(ignore: true)
  _$$OfficerImplCopyWith<_$OfficerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
