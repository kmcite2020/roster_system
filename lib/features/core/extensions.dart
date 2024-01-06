import '../../main.dart';
import 'package:uuid/uuid.dart';

String get randomID => Uuid().v4();

extension ObjectExtensions on Object? {
  Widget text({double? textScaleFactor}) => Text(
        this.toString(),
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );
}

extension WidgetExtensions on Widget {
  Widget pad() => Padding(padding: EdgeInsets.all(8), child: this);
  Widget center() => Center(child: this);
}
