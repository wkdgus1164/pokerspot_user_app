// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storeDetailDataHash() => r'c842a8fd0d4be6f996e0ca908137181117226f66';

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
  late final double lat;
  late final double lng;

  FutureOr<StoreDetailModel> build(
    String storeId,
    double lat,
    double lng,
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
    double lat,
    double lng,
  ) {
    return StoreDetailDataProvider(
      storeId,
      lat,
      lng,
    );
  }

  @override
  StoreDetailDataProvider getProviderOverride(
    covariant StoreDetailDataProvider provider,
  ) {
    return call(
      provider.storeId,
      provider.lat,
      provider.lng,
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
    double lat,
    double lng,
  ) : this._internal(
          () => StoreDetailData()
            ..storeId = storeId
            ..lat = lat
            ..lng = lng,
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
          lat: lat,
          lng: lng,
        );

  StoreDetailDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.storeId,
    required this.lat,
    required this.lng,
  }) : super.internal();

  final String storeId;
  final double lat;
  final double lng;

  @override
  FutureOr<StoreDetailModel> runNotifierBuild(
    covariant StoreDetailData notifier,
  ) {
    return notifier.build(
      storeId,
      lat,
      lng,
    );
  }

  @override
  Override overrideWith(StoreDetailData Function() create) {
    return ProviderOverride(
      origin: this,
      override: StoreDetailDataProvider._internal(
        () => create()
          ..storeId = storeId
          ..lat = lat
          ..lng = lng,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        storeId: storeId,
        lat: lat,
        lng: lng,
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
    return other is StoreDetailDataProvider &&
        other.storeId == storeId &&
        other.lat == lat &&
        other.lng == lng;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, storeId.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, lng.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StoreDetailDataRef
    on AutoDisposeAsyncNotifierProviderRef<StoreDetailModel> {
  /// The parameter `storeId` of this provider.
  String get storeId;

  /// The parameter `lat` of this provider.
  double get lat;

  /// The parameter `lng` of this provider.
  double get lng;
}

class _StoreDetailDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StoreDetailData,
        StoreDetailModel> with StoreDetailDataRef {
  _StoreDetailDataProviderElement(super.provider);

  @override
  String get storeId => (origin as StoreDetailDataProvider).storeId;
  @override
  double get lat => (origin as StoreDetailDataProvider).lat;
  @override
  double get lng => (origin as StoreDetailDataProvider).lng;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
