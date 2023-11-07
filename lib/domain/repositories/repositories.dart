import 'package:hive_flutter/hive_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PersistStoreImpl implements IPersistStore {
  late Box box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('default');
  }

  @override
  Object? read(String key) {
    return box.get(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await box.put(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await box.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    await box.clear();
  }
}
