// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_v2.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeV2DataHash() => r'beeab8672286a5b059c15293ee1921bef9bd87f0';

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

abstract class _$StoreV2Data
    extends BuildlessAutoDisposeAsyncNotifier<StoreV2Model> {
  late final String id;

  FutureOr<StoreV2Model> build(
    String id,
  );
}

/// See also [StoreV2Data].
@ProviderFor(StoreV2Data)
const storeV2DataProvider = StoreV2DataFamily();

/// See also [StoreV2Data].
class StoreV2DataFamily extends Family<AsyncValue<StoreV2Model>> {
  /// See also [StoreV2Data].
  const StoreV2DataFamily();

  /// See also [StoreV2Data].
  StoreV2DataProvider call(
    String id,
  ) {
    return StoreV2DataProvider(
      id,
    );
  }

  @override
  StoreV2DataProvider getProviderOverride(
    covariant StoreV2DataProvider provider,
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
  String? get name => r'storeV2DataProvider';
}

/// See also [StoreV2Data].
class StoreV2DataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StoreV2Data, StoreV2Model> {
  /// See also [StoreV2Data].
  StoreV2DataProvider(
    String id,
  ) : this._internal(
          () => StoreV2Data()..id = id,
          from: storeV2DataProvider,
          name: r'storeV2DataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storeV2DataHash,
          dependencies: StoreV2DataFamily._dependencies,
          allTransitiveDependencies:
              StoreV2DataFamily._allTransitiveDependencies,
          id: id,
        );

  StoreV2DataProvider._internal(
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
  FutureOr<StoreV2Model> runNotifierBuild(
    covariant StoreV2Data notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(StoreV2Data Function() create) {
    return ProviderOverride(
      origin: this,
      override: StoreV2DataProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<StoreV2Data, StoreV2Model>
      createElement() {
    return _StoreV2DataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoreV2DataProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StoreV2DataRef on AutoDisposeAsyncNotifierProviderRef<StoreV2Model> {
  /// The parameter `id` of this provider.
  String get id;
}

class _StoreV2DataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StoreV2Data, StoreV2Model>
    with StoreV2DataRef {
  _StoreV2DataProviderElement(super.provider);

  @override
  String get id => (origin as StoreV2DataProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
