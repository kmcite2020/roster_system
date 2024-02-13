// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rosters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rosters _$RostersFromJson(Map<String, dynamic> json) {
  return _Rosters.fromJson(json);
}

/// @nodoc
mixin _$Rosters {
  Map<String, Roster> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RostersCopyWith<Rosters> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RostersCopyWith<$Res> {
  factory $RostersCopyWith(Rosters value, $Res Function(Rosters) then) =
      _$RostersCopyWithImpl<$Res, Rosters>;
  @useResult
  $Res call({Map<String, Roster> cache});
}

/// @nodoc
class _$RostersCopyWithImpl<$Res, $Val extends Rosters>
    implements $RostersCopyWith<$Res> {
  _$RostersCopyWithImpl(this._value, this._then);

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
              as Map<String, Roster>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RostersImplCopyWith<$Res> implements $RostersCopyWith<$Res> {
  factory _$$RostersImplCopyWith(
          _$RostersImpl value, $Res Function(_$RostersImpl) then) =
      __$$RostersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Roster> cache});
}

/// @nodoc
class __$$RostersImplCopyWithImpl<$Res>
    extends _$RostersCopyWithImpl<$Res, _$RostersImpl>
    implements _$$RostersImplCopyWith<$Res> {
  __$$RostersImplCopyWithImpl(
      _$RostersImpl _value, $Res Function(_$RostersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$RostersImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, Roster>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RostersImpl extends _Rosters {
  const _$RostersImpl(
      {final Map<String, Roster> cache = const <String, Roster>{}})
      : _cache = cache,
        super._();

  factory _$RostersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RostersImplFromJson(json);

  final Map<String, Roster> _cache;
  @override
  @JsonKey()
  Map<String, Roster> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Rosters(cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RostersImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RostersImplCopyWith<_$RostersImpl> get copyWith =>
      __$$RostersImplCopyWithImpl<_$RostersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RostersImplToJson(
      this,
    );
  }
}

abstract class _Rosters extends Rosters {
  const factory _Rosters({final Map<String, Roster> cache}) = _$RostersImpl;
  const _Rosters._() : super._();

  factory _Rosters.fromJson(Map<String, dynamic> json) = _$RostersImpl.fromJson;

  @override
  Map<String, Roster> get cache;
  @override
  @JsonKey(ignore: true)
  _$$RostersImplCopyWith<_$RostersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
