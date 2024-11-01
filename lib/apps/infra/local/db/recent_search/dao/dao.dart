import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/base/db_connection.dart';
import 'package:pokerspot_user_app/apps/infra/local/db/recent_search/entity/recent_search_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dao.g.dart';

abstract class RecentSearchDao {
  Future<List<RecentSearchEntityData>> findAll();
  Future<void> insert(RecentSearchEntityCompanion entity);
  Future<void> deleteById(String id);
  Future<void> deleteAll();
}

@DriftDatabase(tables: [RecentSearchEntity])
class RecentSearchDaoImpl extends _$RecentSearchDaoImpl
    implements RecentSearchDao {
  RecentSearchDaoImpl() : super(openDbConnection());

  @override
  int get schemaVersion => 2;

  @override
  Future<List<RecentSearchEntityData>> findAll() {
    return (select(recentSearchEntity)
          ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
        .get();
  }

  @override
  Future<void> insert(RecentSearchEntityCompanion entity) {
    return into(recentSearchEntity).insert(entity);
  }

  @override
  Future<void> deleteById(String id) {
    return (select(recentSearchEntity)..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  @override
  Future<void> deleteAll() {
    return delete(recentSearchEntity).go();
  }
}

@riverpod
RecentSearchDao recentSearchDao(Ref ref) {
  ref.keepAlive();
  return RecentSearchDaoImpl();
}
