import 'package:project_roster/domain/models/models.dart';
import 'package:project_roster/main.dart';

class DomainRepository {
  Stream<Domain?> domain() => isar.domains.watchObject(Domain.ID, fireImmediately: true);

  void setDomain(Domain domain) => isar.writeTxnSync(() => isar.domains.putSync(domain));
}
