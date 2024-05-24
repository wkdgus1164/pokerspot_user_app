// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dao.dart';

// ignore_for_file: type=lint
class $RecentSearchEntityTable extends RecentSearchEntity
    with TableInfo<$RecentSearchEntityTable, RecentSearchEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecentSearchEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recent_search_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<RecentSearchEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  RecentSearchEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecentSearchEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $RecentSearchEntityTable createAlias(String alias) {
    return $RecentSearchEntityTable(attachedDatabase, alias);
  }
}

class RecentSearchEntityData extends DataClass
    implements Insertable<RecentSearchEntityData> {
  final String id;
  final String name;
  final DateTime createdAt;
  const RecentSearchEntityData(
      {required this.id, required this.name, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecentSearchEntityCompanion toCompanion(bool nullToAbsent) {
    return RecentSearchEntityCompanion(
      id: Value(id),
      name: Value(name),
      createdAt: Value(createdAt),
    );
  }

  factory RecentSearchEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecentSearchEntityData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecentSearchEntityData copyWith(
          {String? id, String? name, DateTime? createdAt}) =>
      RecentSearchEntityData(
        id: id ?? this.id,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('RecentSearchEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentSearchEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.createdAt == this.createdAt);
}

class RecentSearchEntityCompanion
    extends UpdateCompanion<RecentSearchEntityData> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const RecentSearchEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecentSearchEntityCompanion.insert({
    required String id,
    required String name,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<RecentSearchEntityData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecentSearchEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return RecentSearchEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecentSearchEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$RecentSearchDaoImpl extends GeneratedDatabase {
  _$RecentSearchDaoImpl(QueryExecutor e) : super(e);
  _$RecentSearchDaoImplManager get managers =>
      _$RecentSearchDaoImplManager(this);
  late final $RecentSearchEntityTable recentSearchEntity =
      $RecentSearchEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [recentSearchEntity];
}

typedef $$RecentSearchEntityTableInsertCompanionBuilder
    = RecentSearchEntityCompanion Function({
  required String id,
  required String name,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$RecentSearchEntityTableUpdateCompanionBuilder
    = RecentSearchEntityCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$RecentSearchEntityTableTableManager extends RootTableManager<
    _$RecentSearchDaoImpl,
    $RecentSearchEntityTable,
    RecentSearchEntityData,
    $$RecentSearchEntityTableFilterComposer,
    $$RecentSearchEntityTableOrderingComposer,
    $$RecentSearchEntityTableProcessedTableManager,
    $$RecentSearchEntityTableInsertCompanionBuilder,
    $$RecentSearchEntityTableUpdateCompanionBuilder> {
  $$RecentSearchEntityTableTableManager(
      _$RecentSearchDaoImpl db, $RecentSearchEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RecentSearchEntityTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$RecentSearchEntityTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RecentSearchEntityTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RecentSearchEntityCompanion(
            id: id,
            name: name,
            createdAt: createdAt,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String id,
            required String name,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              RecentSearchEntityCompanion.insert(
            id: id,
            name: name,
            createdAt: createdAt,
            rowid: rowid,
          ),
        ));
}

class $$RecentSearchEntityTableProcessedTableManager
    extends ProcessedTableManager<
        _$RecentSearchDaoImpl,
        $RecentSearchEntityTable,
        RecentSearchEntityData,
        $$RecentSearchEntityTableFilterComposer,
        $$RecentSearchEntityTableOrderingComposer,
        $$RecentSearchEntityTableProcessedTableManager,
        $$RecentSearchEntityTableInsertCompanionBuilder,
        $$RecentSearchEntityTableUpdateCompanionBuilder> {
  $$RecentSearchEntityTableProcessedTableManager(super.$state);
}

class $$RecentSearchEntityTableFilterComposer
    extends FilterComposer<_$RecentSearchDaoImpl, $RecentSearchEntityTable> {
  $$RecentSearchEntityTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RecentSearchEntityTableOrderingComposer
    extends OrderingComposer<_$RecentSearchDaoImpl, $RecentSearchEntityTable> {
  $$RecentSearchEntityTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$RecentSearchDaoImplManager {
  final _$RecentSearchDaoImpl _db;
  _$RecentSearchDaoImplManager(this._db);
  $$RecentSearchEntityTableTableManager get recentSearchEntity =>
      $$RecentSearchEntityTableTableManager(_db, _db.recentSearchEntity);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentSearchDaoHash() => r'622d0d1844865946fe842d35558bc1d990336730';

/// See also [recentSearchDao].
@ProviderFor(recentSearchDao)
final recentSearchDaoProvider = AutoDisposeProvider<RecentSearchDao>.internal(
  recentSearchDao,
  name: r'recentSearchDaoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentSearchDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RecentSearchDaoRef = AutoDisposeProviderRef<RecentSearchDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
