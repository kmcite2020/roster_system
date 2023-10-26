// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetShiftCollection on Isar {
  IsarCollection<Shift> get shifts => this.collection();
}

const ShiftSchema = CollectionSchema(
  name: r'Shift',
  id: 2206702943977601259,
  properties: {
    r'officers': PropertySchema(
      id: 0,
      name: r'officers',
      type: IsarType.stringList,
    ),
    r'shiftHours': PropertySchema(
      id: 1,
      name: r'shiftHours',
      type: IsarType.long,
    ),
    r'shiftName': PropertySchema(
      id: 2,
      name: r'shiftName',
      type: IsarType.string,
    )
  },
  estimateSize: _shiftEstimateSize,
  serialize: _shiftSerialize,
  deserialize: _shiftDeserialize,
  deserializeProp: _shiftDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _shiftGetId,
  getLinks: _shiftGetLinks,
  attach: _shiftAttach,
  version: '3.1.0+1',
);

int _shiftEstimateSize(
  Shift object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.officers.length * 3;
  {
    for (var i = 0; i < object.officers.length; i++) {
      final value = object.officers[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.shiftName.length * 3;
  return bytesCount;
}

void _shiftSerialize(
  Shift object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.officers);
  writer.writeLong(offsets[1], object.shiftHours);
  writer.writeString(offsets[2], object.shiftName);
}

Shift _shiftDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Shift();
  object.id = id;
  object.officers = reader.readStringList(offsets[0]) ?? [];
  object.shiftHours = reader.readLong(offsets[1]);
  object.shiftName = reader.readString(offsets[2]);
  return object;
}

P _shiftDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _shiftGetId(Shift object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _shiftGetLinks(Shift object) {
  return [];
}

void _shiftAttach(IsarCollection<dynamic> col, Id id, Shift object) {
  object.id = id;
}

extension ShiftQueryWhereSort on QueryBuilder<Shift, Shift, QWhere> {
  QueryBuilder<Shift, Shift, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ShiftQueryWhere on QueryBuilder<Shift, Shift, QWhereClause> {
  QueryBuilder<Shift, Shift, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Shift, Shift, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ShiftQueryFilter on QueryBuilder<Shift, Shift, QFilterCondition> {
  QueryBuilder<Shift, Shift, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'officers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'officers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'officers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officers',
        value: '',
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition>
      officersElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'officers',
        value: '',
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> officersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'officers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftHoursEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftHoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftHoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftHoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shiftName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shiftName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftName',
        value: '',
      ));
    });
  }

  QueryBuilder<Shift, Shift, QAfterFilterCondition> shiftNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shiftName',
        value: '',
      ));
    });
  }
}

extension ShiftQueryObject on QueryBuilder<Shift, Shift, QFilterCondition> {}

extension ShiftQueryLinks on QueryBuilder<Shift, Shift, QFilterCondition> {}

extension ShiftQuerySortBy on QueryBuilder<Shift, Shift, QSortBy> {
  QueryBuilder<Shift, Shift, QAfterSortBy> sortByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.asc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> sortByShiftHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.desc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> sortByShiftName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftName', Sort.asc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> sortByShiftNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftName', Sort.desc);
    });
  }
}

extension ShiftQuerySortThenBy on QueryBuilder<Shift, Shift, QSortThenBy> {
  QueryBuilder<Shift, Shift, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> thenByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.asc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> thenByShiftHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.desc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> thenByShiftName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftName', Sort.asc);
    });
  }

  QueryBuilder<Shift, Shift, QAfterSortBy> thenByShiftNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftName', Sort.desc);
    });
  }
}

extension ShiftQueryWhereDistinct on QueryBuilder<Shift, Shift, QDistinct> {
  QueryBuilder<Shift, Shift, QDistinct> distinctByOfficers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'officers');
    });
  }

  QueryBuilder<Shift, Shift, QDistinct> distinctByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftHours');
    });
  }

  QueryBuilder<Shift, Shift, QDistinct> distinctByShiftName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftName', caseSensitive: caseSensitive);
    });
  }
}

extension ShiftQueryProperty on QueryBuilder<Shift, Shift, QQueryProperty> {
  QueryBuilder<Shift, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Shift, List<String>, QQueryOperations> officersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'officers');
    });
  }

  QueryBuilder<Shift, int, QQueryOperations> shiftHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftHours');
    });
  }

  QueryBuilder<Shift, String, QQueryOperations> shiftNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetManagerCollection on Isar {
  IsarCollection<Manager> get managers => this.collection();
}

const ManagerSchema = CollectionSchema(
  name: r'Manager',
  id: -834116684168218641,
  properties: {
    r'officerName': PropertySchema(
      id: 0,
      name: r'officerName',
      type: IsarType.string,
    ),
    r'officerScale': PropertySchema(
      id: 1,
      name: r'officerScale',
      type: IsarType.long,
    )
  },
  estimateSize: _managerEstimateSize,
  serialize: _managerSerialize,
  deserialize: _managerDeserialize,
  deserializeProp: _managerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _managerGetId,
  getLinks: _managerGetLinks,
  attach: _managerAttach,
  version: '3.1.0+1',
);

int _managerEstimateSize(
  Manager object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.officerName.length * 3;
  return bytesCount;
}

void _managerSerialize(
  Manager object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.officerName);
  writer.writeLong(offsets[1], object.officerScale);
}

Manager _managerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Manager();
  object.id = id;
  object.officerName = reader.readString(offsets[0]);
  object.officerScale = reader.readLong(offsets[1]);
  return object;
}

P _managerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _managerGetId(Manager object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _managerGetLinks(Manager object) {
  return [];
}

void _managerAttach(IsarCollection<dynamic> col, Id id, Manager object) {
  object.id = id;
}

extension ManagerQueryWhereSort on QueryBuilder<Manager, Manager, QWhere> {
  QueryBuilder<Manager, Manager, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ManagerQueryWhere on QueryBuilder<Manager, Manager, QWhereClause> {
  QueryBuilder<Manager, Manager, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Manager, Manager, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Manager, Manager, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Manager, Manager, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ManagerQueryFilter
    on QueryBuilder<Manager, Manager, QFilterCondition> {
  QueryBuilder<Manager, Manager, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'officerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'officerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'officerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officerName',
        value: '',
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition>
      officerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'officerName',
        value: '',
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerScaleEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officerScale',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerScaleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'officerScale',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerScaleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'officerScale',
        value: value,
      ));
    });
  }

  QueryBuilder<Manager, Manager, QAfterFilterCondition> officerScaleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'officerScale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ManagerQueryObject
    on QueryBuilder<Manager, Manager, QFilterCondition> {}

extension ManagerQueryLinks
    on QueryBuilder<Manager, Manager, QFilterCondition> {}

extension ManagerQuerySortBy on QueryBuilder<Manager, Manager, QSortBy> {
  QueryBuilder<Manager, Manager, QAfterSortBy> sortByOfficerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.asc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> sortByOfficerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.desc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> sortByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.asc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> sortByOfficerScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.desc);
    });
  }
}

extension ManagerQuerySortThenBy
    on QueryBuilder<Manager, Manager, QSortThenBy> {
  QueryBuilder<Manager, Manager, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> thenByOfficerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.asc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> thenByOfficerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.desc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> thenByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.asc);
    });
  }

  QueryBuilder<Manager, Manager, QAfterSortBy> thenByOfficerScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.desc);
    });
  }
}

extension ManagerQueryWhereDistinct
    on QueryBuilder<Manager, Manager, QDistinct> {
  QueryBuilder<Manager, Manager, QDistinct> distinctByOfficerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'officerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Manager, Manager, QDistinct> distinctByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'officerScale');
    });
  }
}

extension ManagerQueryProperty
    on QueryBuilder<Manager, Manager, QQueryProperty> {
  QueryBuilder<Manager, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Manager, String, QQueryOperations> officerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'officerName');
    });
  }

  QueryBuilder<Manager, int, QQueryOperations> officerScaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'officerScale');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DepartmentSchema = Schema(
  name: r'Department',
  id: -2990471549981954131,
  properties: {
    r'departmentName': PropertySchema(
      id: 0,
      name: r'departmentName',
      type: IsarType.string,
    )
  },
  estimateSize: _departmentEstimateSize,
  serialize: _departmentSerialize,
  deserialize: _departmentDeserialize,
  deserializeProp: _departmentDeserializeProp,
);

int _departmentEstimateSize(
  Department object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.departmentName.length * 3;
  return bytesCount;
}

void _departmentSerialize(
  Department object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.departmentName);
}

Department _departmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Department();
  object.departmentName = reader.readString(offsets[0]);
  return object;
}

P _departmentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DepartmentQueryFilter
    on QueryBuilder<Department, Department, QFilterCondition> {
  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departmentName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departmentName',
        value: '',
      ));
    });
  }
}

extension DepartmentQueryObject
    on QueryBuilder<Department, Department, QFilterCondition> {}
