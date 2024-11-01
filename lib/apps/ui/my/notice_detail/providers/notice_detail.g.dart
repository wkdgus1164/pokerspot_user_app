// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noticeDetailServiceHash() =>
    r'424249ac54fc95d58828aab02a1a96a4a754465f';

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

abstract class _$NoticeDetailService
    extends BuildlessAutoDisposeAsyncNotifier<NoticeModel> {
  late final String id;

  FutureOr<NoticeModel> build(
    String id,
  );
}

/// See also [NoticeDetailService].
@ProviderFor(NoticeDetailService)
const noticeDetailServiceProvider = NoticeDetailServiceFamily();

/// See also [NoticeDetailService].
class NoticeDetailServiceFamily extends Family<AsyncValue<NoticeModel>> {
  /// See also [NoticeDetailService].
  const NoticeDetailServiceFamily();

  /// See also [NoticeDetailService].
  NoticeDetailServiceProvider call(
    String id,
  ) {
    return NoticeDetailServiceProvider(
      id,
    );
  }

  @override
  NoticeDetailServiceProvider getProviderOverride(
    covariant NoticeDetailServiceProvider provider,
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
  String? get name => r'noticeDetailServiceProvider';
}

/// See also [NoticeDetailService].
class NoticeDetailServiceProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NoticeDetailService, NoticeModel> {
  /// See also [NoticeDetailService].
  NoticeDetailServiceProvider(
    String id,
  ) : this._internal(
          () => NoticeDetailService()..id = id,
          from: noticeDetailServiceProvider,
          name: r'noticeDetailServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noticeDetailServiceHash,
          dependencies: NoticeDetailServiceFamily._dependencies,
          allTransitiveDependencies:
              NoticeDetailServiceFamily._allTransitiveDependencies,
          id: id,
        );

  NoticeDetailServiceProvider._internal(
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
  FutureOr<NoticeModel> runNotifierBuild(
    covariant NoticeDetailService notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NoticeDetailService Function() create) {
    return ProviderOverride(
      origin: this,
      override: NoticeDetailServiceProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NoticeDetailService, NoticeModel>
      createElement() {
    return _NoticeDetailServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoticeDetailServiceProvider && other.id == id;
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
mixin NoticeDetailServiceRef
    on AutoDisposeAsyncNotifierProviderRef<NoticeModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _NoticeDetailServiceProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NoticeDetailService,
        NoticeModel> with NoticeDetailServiceRef {
  _NoticeDetailServiceProviderElement(super.provider);

  @override
  String get id => (origin as NoticeDetailServiceProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
