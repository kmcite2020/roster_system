// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDomainCollection on Isar {
  IsarCollection<Domain> get domains => this.collection();
}

const DomainSchema = CollectionSchema(
  name: r'Domain',
  id: -6135609459731946152,
  properties: {},
  estimateSize: _domainEstimateSize,
  serialize: _domainSerialize,
  deserialize: _domainDeserialize,
  deserializeProp: _domainDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _domainGetId,
  getLinks: _domainGetLinks,
  attach: _domainAttach,
  version: '3.1.0+1',
);

int _domainEstimateSize(
  Domain object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _domainSerialize(
  Domain object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
Domain _domainDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Domain();
  object.id = id;
  return object;
}

P _domainDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _domainGetId(Domain object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _domainGetLinks(Domain object) {
  return [];
}

void _domainAttach(IsarCollection<dynamic> col, Id id, Domain object) {
  object.id = id;
}

extension DomainQueryWhereSort on QueryBuilder<Domain, Domain, QWhere> {
  QueryBuilder<Domain, Domain, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DomainQueryWhere on QueryBuilder<Domain, Domain, QWhereClause> {
  QueryBuilder<Domain, Domain, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Domain, Domain, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Domain, Domain, QAfterWhereClause> idBetween(
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

extension DomainQueryFilter on QueryBuilder<Domain, Domain, QFilterCondition> {
  QueryBuilder<Domain, Domain, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Domain, Domain, QAfterFilterCondition> idBetween(
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
}

extension DomainQueryObject on QueryBuilder<Domain, Domain, QFilterCondition> {}

extension DomainQueryLinks on QueryBuilder<Domain, Domain, QFilterCondition> {}

extension DomainQuerySortBy on QueryBuilder<Domain, Domain, QSortBy> {}

extension DomainQuerySortThenBy on QueryBuilder<Domain, Domain, QSortThenBy> {
  QueryBuilder<Domain, Domain, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Domain, Domain, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DomainQueryWhereDistinct on QueryBuilder<Domain, Domain, QDistinct> {}

extension DomainQueryProperty on QueryBuilder<Domain, Domain, QQueryProperty> {
  QueryBuilder<Domain, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRosterCollection on Isar {
  IsarCollection<Roster> get rosters => this.collection();
}

const RosterSchema = CollectionSchema(
  name: r'Roster',
  id: 4794477208252819207,
  properties: {
    r'department': PropertySchema(
      id: 0,
      name: r'department',
      type: IsarType.object,
      target: r'Department',
    )
  },
  estimateSize: _rosterEstimateSize,
  serialize: _rosterSerialize,
  deserialize: _rosterDeserialize,
  deserializeProp: _rosterDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Department': DepartmentSchema},
  getId: _rosterGetId,
  getLinks: _rosterGetLinks,
  attach: _rosterAttach,
  version: '3.1.0+1',
);

int _rosterEstimateSize(
  Roster object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      DepartmentSchema.estimateSize(
          object.department, allOffsets[Department]!, allOffsets);
  return bytesCount;
}

void _rosterSerialize(
  Roster object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Department>(
    offsets[0],
    allOffsets,
    DepartmentSchema.serialize,
    object.department,
  );
}

Roster _rosterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Roster();
  object.department = reader.readObjectOrNull<Department>(
        offsets[0],
        DepartmentSchema.deserialize,
        allOffsets,
      ) ??
      Department();
  object.id = id;
  return object;
}

P _rosterDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Department>(
            offset,
            DepartmentSchema.deserialize,
            allOffsets,
          ) ??
          Department()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rosterGetId(Roster object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rosterGetLinks(Roster object) {
  return [];
}

void _rosterAttach(IsarCollection<dynamic> col, Id id, Roster object) {
  object.id = id;
}

extension RosterQueryWhereSort on QueryBuilder<Roster, Roster, QWhere> {
  QueryBuilder<Roster, Roster, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RosterQueryWhere on QueryBuilder<Roster, Roster, QWhereClause> {
  QueryBuilder<Roster, Roster, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Roster, Roster, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Roster, Roster, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Roster, Roster, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Roster, Roster, QAfterWhereClause> idBetween(
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

extension RosterQueryFilter on QueryBuilder<Roster, Roster, QFilterCondition> {
  QueryBuilder<Roster, Roster, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Roster, Roster, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Roster, Roster, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Roster, Roster, QAfterFilterCondition> idBetween(
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
}

extension RosterQueryObject on QueryBuilder<Roster, Roster, QFilterCondition> {
  QueryBuilder<Roster, Roster, QAfterFilterCondition> department(
      FilterQuery<Department> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'department');
    });
  }
}

extension RosterQueryLinks on QueryBuilder<Roster, Roster, QFilterCondition> {}

extension RosterQuerySortBy on QueryBuilder<Roster, Roster, QSortBy> {}

extension RosterQuerySortThenBy on QueryBuilder<Roster, Roster, QSortThenBy> {
  QueryBuilder<Roster, Roster, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Roster, Roster, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension RosterQueryWhereDistinct on QueryBuilder<Roster, Roster, QDistinct> {}

extension RosterQueryProperty on QueryBuilder<Roster, Roster, QQueryProperty> {
  QueryBuilder<Roster, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Roster, Department, QQueryOperations> departmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'department');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDayCollection on Isar {
  IsarCollection<Day> get days => this.collection();
}

const DaySchema = CollectionSchema(
  name: r'Day',
  id: 4355558770213572104,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _dayEstimateSize,
  serialize: _daySerialize,
  deserialize: _dayDeserialize,
  deserializeProp: _dayDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dayGetId,
  getLinks: _dayGetLinks,
  attach: _dayAttach,
  version: '3.1.0+1',
);

int _dayEstimateSize(
  Day object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _daySerialize(
  Day object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

Day _dayDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Day();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  return object;
}

P _dayDeserializeProp<P>(
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

Id _dayGetId(Day object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dayGetLinks(Day object) {
  return [];
}

void _dayAttach(IsarCollection<dynamic> col, Id id, Day object) {
  object.id = id;
}

extension DayQueryWhereSort on QueryBuilder<Day, Day, QWhere> {
  QueryBuilder<Day, Day, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DayQueryWhere on QueryBuilder<Day, Day, QWhereClause> {
  QueryBuilder<Day, Day, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Day, Day, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Day, Day, QAfterWhereClause> idBetween(
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

extension DayQueryFilter on QueryBuilder<Day, Day, QFilterCondition> {
  QueryBuilder<Day, Day, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Day, Day, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Day, Day, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Day, Day, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Day, Day, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension DayQueryObject on QueryBuilder<Day, Day, QFilterCondition> {}

extension DayQueryLinks on QueryBuilder<Day, Day, QFilterCondition> {}

extension DayQuerySortBy on QueryBuilder<Day, Day, QSortBy> {
  QueryBuilder<Day, Day, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DayQuerySortThenBy on QueryBuilder<Day, Day, QSortThenBy> {
  QueryBuilder<Day, Day, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Day, Day, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension DayQueryWhereDistinct on QueryBuilder<Day, Day, QDistinct> {
  QueryBuilder<Day, Day, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension DayQueryProperty on QueryBuilder<Day, Day, QQueryProperty> {
  QueryBuilder<Day, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Day, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOfficerCollection on Isar {
  IsarCollection<Officer> get officers => this.collection();
}

const OfficerSchema = CollectionSchema(
  name: r'Officer',
  id: 9102205356487745792,
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
    ),
    r'shiftHours': PropertySchema(
      id: 2,
      name: r'shiftHours',
      type: IsarType.long,
    )
  },
  estimateSize: _officerEstimateSize,
  serialize: _officerSerialize,
  deserialize: _officerDeserialize,
  deserializeProp: _officerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _officerGetId,
  getLinks: _officerGetLinks,
  attach: _officerAttach,
  version: '3.1.0+1',
);

int _officerEstimateSize(
  Officer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.officerName.length * 3;
  return bytesCount;
}

void _officerSerialize(
  Officer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.officerName);
  writer.writeLong(offsets[1], object.officerScale);
  writer.writeLong(offsets[2], object.shiftHours);
}

Officer _officerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Officer();
  object.id = id;
  object.officerName = reader.readString(offsets[0]);
  object.officerScale = reader.readLong(offsets[1]);
  object.shiftHours = reader.readLong(offsets[2]);
  return object;
}

P _officerDeserializeProp<P>(
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
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _officerGetId(Officer object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _officerGetLinks(Officer object) {
  return [];
}

void _officerAttach(IsarCollection<dynamic> col, Id id, Officer object) {
  object.id = id;
}

extension OfficerQueryWhereSort on QueryBuilder<Officer, Officer, QWhere> {
  QueryBuilder<Officer, Officer, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OfficerQueryWhere on QueryBuilder<Officer, Officer, QWhereClause> {
  QueryBuilder<Officer, Officer, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Officer, Officer, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Officer, Officer, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Officer, Officer, QAfterWhereClause> idBetween(
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

extension OfficerQueryFilter
    on QueryBuilder<Officer, Officer, QFilterCondition> {
  QueryBuilder<Officer, Officer, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameEqualTo(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameGreaterThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameLessThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameBetween(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameStartsWith(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameEndsWith(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameContains(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameMatches(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officerName',
        value: '',
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterFilterCondition>
      officerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'officerName',
        value: '',
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerScaleEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'officerScale',
        value: value,
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerScaleGreaterThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerScaleLessThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> officerScaleBetween(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> shiftHoursEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Officer, Officer, QAfterFilterCondition> shiftHoursGreaterThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> shiftHoursLessThan(
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

  QueryBuilder<Officer, Officer, QAfterFilterCondition> shiftHoursBetween(
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
}

extension OfficerQueryObject
    on QueryBuilder<Officer, Officer, QFilterCondition> {}

extension OfficerQueryLinks
    on QueryBuilder<Officer, Officer, QFilterCondition> {}

extension OfficerQuerySortBy on QueryBuilder<Officer, Officer, QSortBy> {
  QueryBuilder<Officer, Officer, QAfterSortBy> sortByOfficerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> sortByOfficerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.desc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> sortByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> sortByOfficerScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.desc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> sortByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> sortByShiftHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.desc);
    });
  }
}

extension OfficerQuerySortThenBy
    on QueryBuilder<Officer, Officer, QSortThenBy> {
  QueryBuilder<Officer, Officer, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByOfficerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByOfficerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerName', Sort.desc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByOfficerScaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'officerScale', Sort.desc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.asc);
    });
  }

  QueryBuilder<Officer, Officer, QAfterSortBy> thenByShiftHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftHours', Sort.desc);
    });
  }
}

extension OfficerQueryWhereDistinct
    on QueryBuilder<Officer, Officer, QDistinct> {
  QueryBuilder<Officer, Officer, QDistinct> distinctByOfficerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'officerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Officer, Officer, QDistinct> distinctByOfficerScale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'officerScale');
    });
  }

  QueryBuilder<Officer, Officer, QDistinct> distinctByShiftHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftHours');
    });
  }
}

extension OfficerQueryProperty
    on QueryBuilder<Officer, Officer, QQueryProperty> {
  QueryBuilder<Officer, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Officer, String, QQueryOperations> officerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'officerName');
    });
  }

  QueryBuilder<Officer, int, QQueryOperations> officerScaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'officerScale');
    });
  }

  QueryBuilder<Officer, int, QQueryOperations> shiftHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftHours');
    });
  }
}
