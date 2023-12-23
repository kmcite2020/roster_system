// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roster_management.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RosterEntry _$RosterEntryFromJson(Map<String, dynamic> json) {
  return _RosterEntry.fromJson(json);
}

/// @nodoc
mixin _$RosterEntry {
  String get id => throw _privateConstructorUsedError;
  String get officerOne => throw _privateConstructorUsedError;
  String get officerTwo => throw _privateConstructorUsedError;
  DayType get day => throw _privateConstructorUsedError;
  ShiftType get shift => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;

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
      String officerOne,
      String officerTwo,
      DayType day,
      ShiftType shift,
      String department});
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
    Object? officerOne = null,
    Object? officerTwo = null,
    Object? day = null,
    Object? shift = null,
    Object? department = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      officerOne: null == officerOne
          ? _value.officerOne
          : officerOne // ignore: cast_nullable_to_non_nullable
              as String,
      officerTwo: null == officerTwo
          ? _value.officerTwo
          : officerTwo // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
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
      String officerOne,
      String officerTwo,
      DayType day,
      ShiftType shift,
      String department});
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
    Object? officerOne = null,
    Object? officerTwo = null,
    Object? day = null,
    Object? shift = null,
    Object? department = null,
  }) {
    return _then(_$RosterEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      officerOne: null == officerOne
          ? _value.officerOne
          : officerOne // ignore: cast_nullable_to_non_nullable
              as String,
      officerTwo: null == officerTwo
          ? _value.officerTwo
          : officerTwo // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayType,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RosterEntryImpl implements _RosterEntry {
  _$RosterEntryImpl(
      {required this.id,
      required this.officerOne,
      required this.officerTwo,
      required this.day,
      required this.shift,
      required this.department});

  factory _$RosterEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RosterEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String officerOne;
  @override
  final String officerTwo;
  @override
  final DayType day;
  @override
  final ShiftType shift;
  @override
  final String department;

  @override
  String toString() {
    return 'RosterEntry(id: $id, officerOne: $officerOne, officerTwo: $officerTwo, day: $day, shift: $shift, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RosterEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.officerOne, officerOne) ||
                other.officerOne == officerOne) &&
            (identical(other.officerTwo, officerTwo) ||
                other.officerTwo == officerTwo) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, officerOne, officerTwo, day, shift, department);

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
  factory _RosterEntry(
      {required final String id,
      required final String officerOne,
      required final String officerTwo,
      required final DayType day,
      required final ShiftType shift,
      required final String department}) = _$RosterEntryImpl;

  factory _RosterEntry.fromJson(Map<String, dynamic> json) =
      _$RosterEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get officerOne;
  @override
  String get officerTwo;
  @override
  DayType get day;
  @override
  ShiftType get shift;
  @override
  String get department;
  @override
  @JsonKey(ignore: true)
  _$$RosterEntryImplCopyWith<_$RosterEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
