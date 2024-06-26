// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_type_fillter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gameTypeFilterResultHash() =>
    r'64596d92baad52aca52fcbbbea9c5e11c98f1fc6';

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

abstract class _$GameTypeFilterResult
    extends BuildlessAutoDisposeAsyncNotifier<Models> {
  late final GameType gameType;

  FutureOr<Models> build({
    required GameType gameType,
  });
}

/// See also [GameTypeFilterResult].
@ProviderFor(GameTypeFilterResult)
const gameTypeFilterResultProvider = GameTypeFilterResultFamily();

/// See also [GameTypeFilterResult].
class GameTypeFilterResultFamily extends Family<AsyncValue<Models>> {
  /// See also [GameTypeFilterResult].
  const GameTypeFilterResultFamily();

  /// See also [GameTypeFilterResult].
  GameTypeFilterResultProvider call({
    required GameType gameType,
  }) {
    return GameTypeFilterResultProvider(
      gameType: gameType,
    );
  }

  @override
  GameTypeFilterResultProvider getProviderOverride(
    covariant GameTypeFilterResultProvider provider,
  ) {
    return call(
      gameType: provider.gameType,
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
  String? get name => r'gameTypeFilterResultProvider';
}

/// See also [GameTypeFilterResult].
class GameTypeFilterResultProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GameTypeFilterResult, Models> {
  /// See also [GameTypeFilterResult].
  GameTypeFilterResultProvider({
    required GameType gameType,
  }) : this._internal(
          () => GameTypeFilterResult()..gameType = gameType,
          from: gameTypeFilterResultProvider,
          name: r'gameTypeFilterResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gameTypeFilterResultHash,
          dependencies: GameTypeFilterResultFamily._dependencies,
          allTransitiveDependencies:
              GameTypeFilterResultFamily._allTransitiveDependencies,
          gameType: gameType,
        );

  GameTypeFilterResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.gameType,
  }) : super.internal();

  final GameType gameType;

  @override
  FutureOr<Models> runNotifierBuild(
    covariant GameTypeFilterResult notifier,
  ) {
    return notifier.build(
      gameType: gameType,
    );
  }

  @override
  Override overrideWith(GameTypeFilterResult Function() create) {
    return ProviderOverride(
      origin: this,
      override: GameTypeFilterResultProvider._internal(
        () => create()..gameType = gameType,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        gameType: gameType,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GameTypeFilterResult, Models>
      createElement() {
    return _GameTypeFilterResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GameTypeFilterResultProvider && other.gameType == gameType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, gameType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GameTypeFilterResultRef on AutoDisposeAsyncNotifierProviderRef<Models> {
  /// The parameter `gameType` of this provider.
  GameType get gameType;
}

class _GameTypeFilterResultProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GameTypeFilterResult,
        Models> with GameTypeFilterResultRef {
  _GameTypeFilterResultProviderElement(super.provider);

  @override
  GameType get gameType => (origin as GameTypeFilterResultProvider).gameType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
