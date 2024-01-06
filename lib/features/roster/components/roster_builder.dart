// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:roster_system/features/roster/roster.dart';

class RosterBuilder extends StatelessWidget {
  const RosterBuilder({
    Key? key,
    required this.rosterName,
    required this.builder,
  }) : super(key: key);
  final String rosterName;
  final Widget Function(Roster) builder;
  @override
  Widget build(BuildContext context) {
    final roster = Roster.fromName(rosterName);
    return builder(roster);
  }
}
