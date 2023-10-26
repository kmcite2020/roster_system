// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:project_roster/domain/domain.dart';
import 'package:project_roster/presentation/logic.dart';

part 'configuration.dart';
part 'models.g.dart';

@Collection()
class Domain {
  Id id = 0;
  @ignore
  Configuration configuration = Configuration();
  static const ID = 0;
}

@Collection()
class Roster {
  Id id = Isar.autoIncrement;
  Department department = Department();
}

@Collection()
class Day {
  Id id = Isar.autoIncrement;
  String name = '';
}

@collection
class Officer {
  Id id = Isar.autoIncrement;
  String officerName = '';
  int shiftHours = 0;
  int officerScale = 17;
}
