import 'package:roster_system/main.dart';

class HiveStorage implements IPersistStore {
  late Box box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('roster_system');
  }

  @override
  Object? read(String key) => box.get(key);

  @override
  Future<void> write<T>(String key, T value) async => await box.put(key, value);

  @override
  Future<void> delete(String key) async => await box.delete(key);

  @override
  Future<void> deleteAll() async => await box.clear();
}
