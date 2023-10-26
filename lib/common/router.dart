part of '../main.dart';

final router = RM.injectNavigator(
  routes: {
    HomePage.routeName: (_) => HomePage(),
    SpecificRosterPage.path: (data) {
      final rosterType = data.arguments;
      return SpecificRosterPage(rosterID: rosterType);
    }
  },
);
