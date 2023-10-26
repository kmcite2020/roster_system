part of '../main.dart';

extension ObjectExtension on Object? {
  Text text([double? textScaleFactor]) {
    return Text(
      toString(),
      textScaleFactor: textScaleFactor ?? ConfigurationBloc.to.getTextScaleFactor,
    );
  }

  void inform() => dev.log(toString());
}

extension WidgetExtension on Widget {
  Widget pad([double? padding]) {
    return Padding(
      padding: EdgeInsets.all(padding ?? ConfigurationBloc.to.getPadding),
      child: this,
    );
  }

  Widget center() {
    return Center(child: this);
  }

  Widget card() {
    return Card(child: this);
  }
}

String get randomID => Uuid().v4();
