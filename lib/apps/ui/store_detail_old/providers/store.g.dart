// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeDataHash() => r'564b1dde37f9561ace0895c6310d0f5649b9ea87';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$StoreData
    extends BuildlessAutoDisposeAsyncNotifier<StoreModel> {
  late final String id;

  FutureOr<StoreModel> build(
    String id,
  );
}

/// See also [StoreData].
@ProviderFor(StoreData)
const storeDataProvider = StoreDataFamily();

/// See also [StoreData].
class StoreDataFamily extends Family<AsyncValue<StoreModel>> {
  /// See also [StoreData].
  const StoreDataFamily();

  /// See also [StoreData].
  StoreDataProvider call(
    String id,
  ) {
    return StoreDataProvider(
      id,
    );
  }

  @override
  StoreDataProvider getProviderOverride(
    covariant StoreDataProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'storeDataProvider';
}

/// See also [StoreData].
class StoreDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StoreData, StoreModel> {
  /// See also [StoreData].
  StoreDataProvider(
    String id,
  ) : this._internal(
          () => StoreData()..id = id,
          from: storeDataProvider,
          name: r'storeDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storeDataHash,
          dependencies: StoreDataFamily._dependencies,
          allTransitiveDependencies: StoreDataFamily._allTransitiveDependencies,
          id: id,
        );

  StoreDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<StoreModel> runNotifierBuild(
    covariant StoreData notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(StoreData Function() create) {
    return ProviderOverride(
      origin: this,
      override: StoreDataProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<StoreData, StoreModel>
      createElement() {
    return _StoreDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoreDataProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StoreDataRef on AutoDisposeAsyncNotifierProviderRef<StoreModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _StoreDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StoreData, StoreModel>
    with StoreDataRef {
  _StoreDataProviderElement(super.provider);

  @override
  String get id => (origin as StoreDataProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member