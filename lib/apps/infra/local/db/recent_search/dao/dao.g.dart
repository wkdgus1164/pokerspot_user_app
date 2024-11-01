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
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _openTimeMeta =
      const VerificationMeta('openTime');
  @override
  late final GeneratedColumn<String> openTime = GeneratedColumn<String>(
      'open_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, image, address, openTime, createdAt];
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
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('open_time')) {
      context.handle(_openTimeMeta,
          openTime.isAcceptableOrUnknown(data['open_time']!, _openTimeMeta));
    } else if (isInserting) {
      context.missing(_openTimeMeta);
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
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      openTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}open_time'])!,
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
  final String image;
  final String address;
  final String openTime;
  final DateTime createdAt;
  const RecentSearchEntityData(
      {required this.id,
      required this.name,
      required this.image,
      required this.address,
      required this.openTime,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    map['address'] = Variable<String>(address);
    map['open_time'] = Variable<String>(openTime);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecentSearchEntityCompanion toCompanion(bool nullToAbsent) {
    return RecentSearchEntityCompanion(
      id: Value(id),
      name: Value(name),
      image: Value(image),
      address: Value(address),
      openTime: Value(openTime),
      createdAt: Value(createdAt),
    );
  }

  factory RecentSearchEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecentSearchEntityData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      address: serializer.fromJson<String>(json['address']),
      openTime: serializer.fromJson<String>(json['openTime']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'address': serializer.toJson<String>(address),
      'openTime': serializer.toJson<String>(openTime),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecentSearchEntityData copyWith(
          {String? id,
          String? name,
          String? image,
          String? address,
          String? openTime,
          DateTime? createdAt}) =>
      RecentSearchEntityData(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        address: address ?? this.address,
        openTime: openTime ?? this.openTime,
        createdAt: createdAt ?? this.createdAt,
      );
  RecentSearchEntityData copyWithCompanion(RecentSearchEntityCompanion data) {
    return RecentSearchEntityData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
      address: data.address.present ? data.address.value : this.address,
      openTime: data.openTime.present ? data.openTime.value : this.openTime,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecentSearchEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('address: $address, ')
          ..write('openTime: $openTime, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, image, address, openTime, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentSearchEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.address == this.address &&
          other.openTime == this.openTime &&
          other.createdAt == this.createdAt);
}

class RecentSearchEntityCompanion
    extends UpdateCompanion<RecentSearchEntityData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> image;
  final Value<String> address;
  final Value<String> openTime;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const RecentSearchEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.address = const Value.absent(),
    this.openTime = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecentSearchEntityCompanion.insert({
    required String id,
    required String name,
    required String image,
    required String address,
    required String openTime,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        image = Value(image),
        address = Value(address),
        openTime = Value(openTime),
        createdAt = Value(createdAt);
  static Insertable<RecentSearchEntityData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? address,
    Expression<String>? openTime,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (address != null) 'address': address,
      if (openTime != null) 'open_time': openTime,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecentSearchEntityCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? image,
      Value<String>? address,
      Value<String>? openTime,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return RecentSearchEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      address: address ?? this.address,
      openTime: openTime ?? this.openTime,
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
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (openTime.present) {
      map['open_time'] = Variable<String>(openTime.value);
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
          ..write('image: $image, ')
          ..write('address: $address, ')
          ..write('openTime: $openTime, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$RecentSearchDaoImpl extends GeneratedDatabase {
  _$RecentSearchDaoImpl(QueryExecutor e) : super(e);
  $RecentSearchDaoImplManager get managers => $RecentSearchDaoImplManager(this);
  late final $RecentSearchEntityTable recentSearchEntity =
      $RecentSearchEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [recentSearchEntity];
}

typedef $$RecentSearchEntityTableCreateCompanionBuilder
    = RecentSearchEntityCompanion Function({
  required String id,
  required String name,
  required String image,
  required String address,
  required String openTime,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$RecentSearchEntityTableUpdateCompanionBuilder
    = RecentSearchEntityCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> image,
  Value<String> address,
  Value<String> openTime,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$RecentSearchEntityTableFilterComposer
    extends Composer<_$RecentSearchDaoImpl, $RecentSearchEntityTable> {
  $$RecentSearchEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get openTime => $composableBuilder(
      column: $table.openTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$RecentSearchEntityTableOrderingComposer
    extends Composer<_$RecentSearchDaoImpl, $RecentSearchEntityTable> {
  $$RecentSearchEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get openTime => $composableBuilder(
      column: $table.openTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$RecentSearchEntityTableAnnotationComposer
    extends Composer<_$RecentSearchDaoImpl, $RecentSearchEntityTable> {
  $$RecentSearchEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get openTime =>
      $composableBuilder(column: $table.openTime, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$RecentSearchEntityTableTableManager extends RootTableManager<
    _$RecentSearchDaoImpl,
    $RecentSearchEntityTable,
    RecentSearchEntityData,
    $$RecentSearchEntityTableFilterComposer,
    $$RecentSearchEntityTableOrderingComposer,
    $$RecentSearchEntityTableAnnotationComposer,
    $$RecentSearchEntityTableCreateCompanionBuilder,
    $$RecentSearchEntityTableUpdateCompanionBuilder,
    (
      RecentSearchEntityData,
      BaseReferences<_$RecentSearchDaoImpl, $RecentSearchEntityTable,
          RecentSearchEntityData>
    ),
    RecentSearchEntityData,
    PrefetchHooks Function()> {
  $$RecentSearchEntityTableTableManager(
      _$RecentSearchDaoImpl db, $RecentSearchEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecentSearchEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecentSearchEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecentSearchEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> openTime = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RecentSearchEntityCompanion(
            id: id,
            name: name,
            image: image,
            address: address,
            openTime: openTime,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String image,
            required String address,
            required String openTime,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              RecentSearchEntityCompanion.insert(
            id: id,
            name: name,
            image: image,
            address: address,
            openTime: openTime,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RecentSearchEntityTableProcessedTableManager = ProcessedTableManager<
    _$RecentSearchDaoImpl,
    $RecentSearchEntityTable,
    RecentSearchEntityData,
    $$RecentSearchEntityTableFilterComposer,
    $$RecentSearchEntityTableOrderingComposer,
    $$RecentSearchEntityTableAnnotationComposer,
    $$RecentSearchEntityTableCreateCompanionBuilder,
    $$RecentSearchEntityTableUpdateCompanionBuilder,
    (
      RecentSearchEntityData,
      BaseReferences<_$RecentSearchDaoImpl, $RecentSearchEntityTable,
          RecentSearchEntityData>
    ),
    RecentSearchEntityData,
    PrefetchHooks Function()>;

class $RecentSearchDaoImplManager {
  final _$RecentSearchDaoImpl _db;
  $RecentSearchDaoImplManager(this._db);
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentSearchDaoRef = AutoDisposeProviderRef<RecentSearchDao>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
