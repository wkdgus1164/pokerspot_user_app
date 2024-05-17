// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeDetailDataHash() => r'd894030cdc832db3b5d0951c9895e5fd2de7f328';

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

abstract class _$StoreDetailData
    extends BuildlessAutoDisposeAsyncNotifier<StoreDetailModel> {
  late final String storeId;

  FutureOr<StoreDetailModel> build(
    String storeId,
  );
}

/// See also [StoreDetailData].
@ProviderFor(StoreDetailData)
const storeDetailDataProvider = StoreDetailDataFamily();

/// See also [StoreDetailData].
class StoreDetailDataFamily extends Family<AsyncValue<StoreDetailModel>> {
  /// See also [StoreDetailData].
  const StoreDetailDataFamily();

  /// See also [StoreDetailData].
  StoreDetailDataProvider call(
    String storeId,
  ) {
    return StoreDetailDataProvider(
      storeId,
    );
  }

  @override
  StoreDetailDataProvider getProviderOverride(
    covariant StoreDetailDataProvider provider,
  ) {
    return call(
      provider.storeId,
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
  String? get name => r'storeDetailDataProvider';
}

/// See also [StoreDetailData].
class StoreDetailDataProvider extends AutoDisposeAsyncNotifierProviderImpl<
    StoreDetailData, StoreDetailModel> {
  /// See also [StoreDetailData].
  StoreDetailDataProvider(
    String storeId,
  ) : this._internal(
          () => StoreDetailData()..storeId = storeId,
          from: storeDetailDataProvider,
          name: r'storeDetailDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storeDetailDataHash,
          dependencies: StoreDetailDataFamily._dependencies,
          allTransitiveDependencies:
              StoreDetailDataFamily._allTransitiveDependencies,
          storeId: storeId,
        );

  StoreDetailDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.storeId,
  }) : super.internal();

  final String storeId;

  @override
  FutureOr<StoreDetailModel> runNotifierBuild(
    covariant StoreDetailData notifier,
  ) {
    return notifier.build(
      storeId,
    );
  }

  @override
  Override overrideWith(StoreDetailData Function() create) {
    return ProviderOverride(
      origin: this,
      override: StoreDetailDataProvider._internal(
        () => create()..storeId = storeId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        storeId: storeId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<StoreDetailData, StoreDetailModel>
      createElement() {
    return _StoreDetailDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StoreDetailDataProvider && other.storeId == storeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, storeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StoreDetailDataRef
    on AutoDisposeAsyncNotifierProviderRef<StoreDetailModel> {
  /// The parameter `storeId` of this provider.
  String get storeId;
}

class _StoreDetailDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StoreDetailData,
        StoreDetailModel> with StoreDetailDataRef {
  _StoreDetailDataProviderElement(super.provider);

  @override
  String get storeId => (origin as StoreDetailDataProvider).storeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
