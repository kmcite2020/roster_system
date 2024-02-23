import '../../main.dart';
import 'package:uuid/uuid.dart';

String get randomID => Uuid().v4();

extension ObjectExtensions on dynamic {
  Widget text({double? textScaleFactor}) {
    return Text(
      this.toString(),
      textScaler: TextScaler.linear(textScaleFactor ?? 1),
    );
  }
}

extension WidgetExtensions on Widget {
  Widget pad() => Padding(padding: EdgeInsets.all(8), child: this);
  Widget center() => Center(child: this);
  Widget card() => Card(child: this);
}

extension DateTimeExtensions on DateTime {
  String humane() {
    return "$day-$month-$year";
  }

  Widget human() => humane().text();

  String get day => this.day.toString();
  String get month => this.month.toString();
  String get year => this.year.toString();
}

extension InjectedExtensions<T> on Injected<T> {
  T get([T? _state]) => _state != null ? state = _state : state;
}
