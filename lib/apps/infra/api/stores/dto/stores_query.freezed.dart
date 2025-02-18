// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoresQuery _$StoresQueryFromJson(Map<String, dynamic> json) {
  return _StoresQuery.fromJson(json);
}

/// @nodoc
mixin _$StoresQuery {
  /// 위도
  double get lat => throw _privateConstructorUsedError;

  /// 경도
  double get lng => throw _privateConstructorUsedError;

  /// 영업 상태
  OperationStatus get operationStatus => throw _privateConstructorUsedError;

  /// 최소 영업 시작 시간
  String get minOpenTime => throw _privateConstructorUsedError;

  /// 최대 영업 종료 시간
  String get maxOpenTime => throw _privateConstructorUsedError;

  /// 게임 종류
  GameType get gameType => throw _privateConstructorUsedError;

  /// 최소 엔트리 비용
  int get minEntryPrice => throw _privateConstructorUsedError;

  /// 최대 엔트리 비용
  int get maxEntryPrice => throw _privateConstructorUsedError;

  /// GTD 최소 보상금
  int? get gtdMinReward => throw _privateConstructorUsedError;

  /// 검색어
  String? get searchText => throw _privateConstructorUsedError;

  /// 행정구역 코드
  String? get regCode => throw _privateConstructorUsedError;

  /// 최소 프라이즈 머니
  /// Default: 0
  int get minPrize => throw _privateConstructorUsedError;

  /// 최대 프라이즈 머니
  /// Default: 100
  int get maxPrize => throw _privateConstructorUsedError;

  /// 오리지널 칩셋 초과 여부
  /// Default: false
  bool get isOnlyFirstGameBenefit => throw _privateConstructorUsedError;

  /// 신규 칩셋 초과 여부
  /// Default: false
  bool get isOnlyNewUserBenefit => throw _privateConstructorUsedError;

  /// 페이지 번호
  /// Default: 1
  int get page => throw _privateConstructorUsedError;

  /// 페이지당 항목 수
  /// Default: 20
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this StoresQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoresQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoresQueryCopyWith<StoresQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresQueryCopyWith<$Res> {
  factory $StoresQueryCopyWith(
          StoresQuery value, $Res Function(StoresQuery) then) =
      _$StoresQueryCopyWithImpl<$Res, StoresQuery>;
  @useResult
  $Res call(
      {double lat,
      double lng,
      OperationStatus operationStatus,
      String minOpenTime,
      String maxOpenTime,
      GameType gameType,
      int minEntryPrice,
      int maxEntryPrice,
      int? gtdMinReward,
      String? searchText,
      String? regCode,
      int minPrize,
      int maxPrize,
      bool isOnlyFirstGameBenefit,
      bool isOnlyNewUserBenefit,
      int page,
      int perPage});
}

/// @nodoc
class _$StoresQueryCopyWithImpl<$Res, $Val extends StoresQuery>
    implements $StoresQueryCopyWith<$Res> {
  _$StoresQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoresQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? operationStatus = null,
    Object? minOpenTime = null,
    Object? maxOpenTime = null,
    Object? gameType = null,
    Object? minEntryPrice = null,
    Object? maxEntryPrice = null,
    Object? gtdMinReward = freezed,
    Object? searchText = freezed,
    Object? regCode = freezed,
    Object? minPrize = null,
    Object? maxPrize = null,
    Object? isOnlyFirstGameBenefit = null,
    Object? isOnlyNewUserBenefit = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      operationStatus: null == operationStatus
          ? _value.operationStatus
          : operationStatus // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
      minOpenTime: null == minOpenTime
          ? _value.minOpenTime
          : minOpenTime // ignore: cast_nullable_to_non_nullable
              as String,
      maxOpenTime: null == maxOpenTime
          ? _value.maxOpenTime
          : maxOpenTime // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
      minEntryPrice: null == minEntryPrice
          ? _value.minEntryPrice
          : minEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntryPrice: null == maxEntryPrice
          ? _value.maxEntryPrice
          : maxEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      gtdMinReward: freezed == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      regCode: freezed == regCode
          ? _value.regCode
          : regCode // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrize: null == minPrize
          ? _value.minPrize
          : minPrize // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrize: null == maxPrize
          ? _value.maxPrize
          : maxPrize // ignore: cast_nullable_to_non_nullable
              as int,
      isOnlyFirstGameBenefit: null == isOnlyFirstGameBenefit
          ? _value.isOnlyFirstGameBenefit
          : isOnlyFirstGameBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnlyNewUserBenefit: null == isOnlyNewUserBenefit
          ? _value.isOnlyNewUserBenefit
          : isOnlyNewUserBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoresQueryImplCopyWith<$Res>
    implements $StoresQueryCopyWith<$Res> {
  factory _$$StoresQueryImplCopyWith(
          _$StoresQueryImpl value, $Res Function(_$StoresQueryImpl) then) =
      __$$StoresQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lng,
      OperationStatus operationStatus,
      String minOpenTime,
      String maxOpenTime,
      GameType gameType,
      int minEntryPrice,
      int maxEntryPrice,
      int? gtdMinReward,
      String? searchText,
      String? regCode,
      int minPrize,
      int maxPrize,
      bool isOnlyFirstGameBenefit,
      bool isOnlyNewUserBenefit,
      int page,
      int perPage});
}

/// @nodoc
class __$$StoresQueryImplCopyWithImpl<$Res>
    extends _$StoresQueryCopyWithImpl<$Res, _$StoresQueryImpl>
    implements _$$StoresQueryImplCopyWith<$Res> {
  __$$StoresQueryImplCopyWithImpl(
      _$StoresQueryImpl _value, $Res Function(_$StoresQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoresQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? operationStatus = null,
    Object? minOpenTime = null,
    Object? maxOpenTime = null,
    Object? gameType = null,
    Object? minEntryPrice = null,
    Object? maxEntryPrice = null,
    Object? gtdMinReward = freezed,
    Object? searchText = freezed,
    Object? regCode = freezed,
    Object? minPrize = null,
    Object? maxPrize = null,
    Object? isOnlyFirstGameBenefit = null,
    Object? isOnlyNewUserBenefit = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$StoresQueryImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      operationStatus: null == operationStatus
          ? _value.operationStatus
          : operationStatus // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
      minOpenTime: null == minOpenTime
          ? _value.minOpenTime
          : minOpenTime // ignore: cast_nullable_to_non_nullable
              as String,
      maxOpenTime: null == maxOpenTime
          ? _value.maxOpenTime
          : maxOpenTime // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
      minEntryPrice: null == minEntryPrice
          ? _value.minEntryPrice
          : minEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxEntryPrice: null == maxEntryPrice
          ? _value.maxEntryPrice
          : maxEntryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      gtdMinReward: freezed == gtdMinReward
          ? _value.gtdMinReward
          : gtdMinReward // ignore: cast_nullable_to_non_nullable
              as int?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      regCode: freezed == regCode
          ? _value.regCode
          : regCode // ignore: cast_nullable_to_non_nullable
              as String?,
      minPrize: null == minPrize
          ? _value.minPrize
          : minPrize // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrize: null == maxPrize
          ? _value.maxPrize
          : maxPrize // ignore: cast_nullable_to_non_nullable
              as int,
      isOnlyFirstGameBenefit: null == isOnlyFirstGameBenefit
          ? _value.isOnlyFirstGameBenefit
          : isOnlyFirstGameBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      isOnlyNewUserBenefit: null == isOnlyNewUserBenefit
          ? _value.isOnlyNewUserBenefit
          : isOnlyNewUserBenefit // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoresQueryImpl implements _StoresQuery {
  _$StoresQueryImpl(
      {required this.lat,
      required this.lng,
      this.operationStatus = OperationStatus.ALL,
      this.minOpenTime = '00:00',
      this.maxOpenTime = '23:30',
      this.gameType = GameType.ALL,
      this.minEntryPrice = 0,
      this.maxEntryPrice = 100,
      this.gtdMinReward,
      this.searchText,
      this.regCode,
      this.minPrize = 0,
      this.maxPrize = 100,
      this.isOnlyFirstGameBenefit = false,
      this.isOnlyNewUserBenefit = false,
      this.page = 1,
      this.perPage = 20});

  factory _$StoresQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoresQueryImplFromJson(json);

  /// 위도
  @override
  final double lat;

  /// 경도
  @override
  final double lng;

  /// 영업 상태
  @override
  @JsonKey()
  final OperationStatus operationStatus;

  /// 최소 영업 시작 시간
  @override
  @JsonKey()
  final String minOpenTime;

  /// 최대 영업 종료 시간
  @override
  @JsonKey()
  final String maxOpenTime;

  /// 게임 종류
  @override
  @JsonKey()
  final GameType gameType;

  /// 최소 엔트리 비용
  @override
  @JsonKey()
  final int minEntryPrice;

  /// 최대 엔트리 비용
  @override
  @JsonKey()
  final int maxEntryPrice;

  /// GTD 최소 보상금
  @override
  final int? gtdMinReward;

  /// 검색어
  @override
  final String? searchText;

  /// 행정구역 코드
  @override
  final String? regCode;

  /// 최소 프라이즈 머니
  /// Default: 0
  @override
  @JsonKey()
  final int minPrize;

  /// 최대 프라이즈 머니
  /// Default: 100
  @override
  @JsonKey()
  final int maxPrize;

  /// 오리지널 칩셋 초과 여부
  /// Default: false
  @override
  @JsonKey()
  final bool isOnlyFirstGameBenefit;

  /// 신규 칩셋 초과 여부
  /// Default: false
  @override
  @JsonKey()
  final bool isOnlyNewUserBenefit;

  /// 페이지 번호
  /// Default: 1
  @override
  @JsonKey()
  final int page;

  /// 페이지당 항목 수
  /// Default: 20
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'StoresQuery(lat: $lat, lng: $lng, operationStatus: $operationStatus, minOpenTime: $minOpenTime, maxOpenTime: $maxOpenTime, gameType: $gameType, minEntryPrice: $minEntryPrice, maxEntryPrice: $maxEntryPrice, gtdMinReward: $gtdMinReward, searchText: $searchText, regCode: $regCode, minPrize: $minPrize, maxPrize: $maxPrize, isOnlyFirstGameBenefit: $isOnlyFirstGameBenefit, isOnlyNewUserBenefit: $isOnlyNewUserBenefit, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoresQueryImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.operationStatus, operationStatus) ||
                other.operationStatus == operationStatus) &&
            (identical(other.minOpenTime, minOpenTime) ||
                other.minOpenTime == minOpenTime) &&
            (identical(other.maxOpenTime, maxOpenTime) ||
                other.maxOpenTime == maxOpenTime) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.minEntryPrice, minEntryPrice) ||
                other.minEntryPrice == minEntryPrice) &&
            (identical(other.maxEntryPrice, maxEntryPrice) ||
                other.maxEntryPrice == maxEntryPrice) &&
            (identical(other.gtdMinReward, gtdMinReward) ||
                other.gtdMinReward == gtdMinReward) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.regCode, regCode) || other.regCode == regCode) &&
            (identical(other.minPrize, minPrize) ||
                other.minPrize == minPrize) &&
            (identical(other.maxPrize, maxPrize) ||
                other.maxPrize == maxPrize) &&
            (identical(other.isOnlyFirstGameBenefit, isOnlyFirstGameBenefit) ||
                other.isOnlyFirstGameBenefit == isOnlyFirstGameBenefit) &&
            (identical(other.isOnlyNewUserBenefit, isOnlyNewUserBenefit) ||
                other.isOnlyNewUserBenefit == isOnlyNewUserBenefit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lng,
      operationStatus,
      minOpenTime,
      maxOpenTime,
      gameType,
      minEntryPrice,
      maxEntryPrice,
      gtdMinReward,
      searchText,
      regCode,
      minPrize,
      maxPrize,
      isOnlyFirstGameBenefit,
      isOnlyNewUserBenefit,
      page,
      perPage);

  /// Create a copy of StoresQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoresQueryImplCopyWith<_$StoresQueryImpl> get copyWith =>
      __$$StoresQueryImplCopyWithImpl<_$StoresQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoresQueryImplToJson(
      this,
    );
  }
}

abstract class _StoresQuery implements StoresQuery {
  factory _StoresQuery(
      {required final double lat,
      required final double lng,
      final OperationStatus operationStatus,
      final String minOpenTime,
      final String maxOpenTime,
      final GameType gameType,
      final int minEntryPrice,
      final int maxEntryPrice,
      final int? gtdMinReward,
      final String? searchText,
      final String? regCode,
      final int minPrize,
      final int maxPrize,
      final bool isOnlyFirstGameBenefit,
      final bool isOnlyNewUserBenefit,
      final int page,
      final int perPage}) = _$StoresQueryImpl;

  factory _StoresQuery.fromJson(Map<String, dynamic> json) =
      _$StoresQueryImpl.fromJson;

  /// 위도
  @override
  double get lat;

  /// 경도
  @override
  double get lng;

  /// 영업 상태
  @override
  OperationStatus get operationStatus;

  /// 최소 영업 시작 시간
  @override
  String get minOpenTime;

  /// 최대 영업 종료 시간
  @override
  String get maxOpenTime;

  /// 게임 종류
  @override
  GameType get gameType;

  /// 최소 엔트리 비용
  @override
  int get minEntryPrice;

  /// 최대 엔트리 비용
  @override
  int get maxEntryPrice;

  /// GTD 최소 보상금
  @override
  int? get gtdMinReward;

  /// 검색어
  @override
  String? get searchText;

  /// 행정구역 코드
  @override
  String? get regCode;

  /// 최소 프라이즈 머니
  /// Default: 0
  @override
  int get minPrize;

  /// 최대 프라이즈 머니
  /// Default: 100
  @override
  int get maxPrize;

  /// 오리지널 칩셋 초과 여부
  /// Default: false
  @override
  bool get isOnlyFirstGameBenefit;

  /// 신규 칩셋 초과 여부
  /// Default: false
  @override
  bool get isOnlyNewUserBenefit;

  /// 페이지 번호
  /// Default: 1
  @override
  int get page;

  /// 페이지당 항목 수
  /// Default: 20
  @override
  int get perPage;

  /// Create a copy of StoresQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoresQueryImplCopyWith<_$StoresQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreQuery _$StoreQueryFromJson(Map<String, dynamic> json) {
  return _StoreQuery.fromJson(json);
}

/// @nodoc
mixin _$StoreQuery {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  /// Serializes this StoreQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreQueryCopyWith<StoreQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreQueryCopyWith<$Res> {
  factory $StoreQueryCopyWith(
          StoreQuery value, $Res Function(StoreQuery) then) =
      _$StoreQueryCopyWithImpl<$Res, StoreQuery>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$StoreQueryCopyWithImpl<$Res, $Val extends StoreQuery>
    implements $StoreQueryCopyWith<$Res> {
  _$StoreQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreQueryImplCopyWith<$Res>
    implements $StoreQueryCopyWith<$Res> {
  factory _$$StoreQueryImplCopyWith(
          _$StoreQueryImpl value, $Res Function(_$StoreQueryImpl) then) =
      __$$StoreQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$StoreQueryImplCopyWithImpl<$Res>
    extends _$StoreQueryCopyWithImpl<$Res, _$StoreQueryImpl>
    implements _$$StoreQueryImplCopyWith<$Res> {
  __$$StoreQueryImplCopyWithImpl(
      _$StoreQueryImpl _value, $Res Function(_$StoreQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$StoreQueryImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreQueryImpl implements _StoreQuery {
  _$StoreQueryImpl({required this.lat, required this.lng});

  factory _$StoreQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreQueryImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'StoreQuery(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreQueryImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of StoreQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreQueryImplCopyWith<_$StoreQueryImpl> get copyWith =>
      __$$StoreQueryImplCopyWithImpl<_$StoreQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreQueryImplToJson(
      this,
    );
  }
}

abstract class _StoreQuery implements StoreQuery {
  factory _StoreQuery({required final double lat, required final double lng}) =
      _$StoreQueryImpl;

  factory _StoreQuery.fromJson(Map<String, dynamic> json) =
      _$StoreQueryImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;

  /// Create a copy of StoreQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreQueryImplCopyWith<_$StoreQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
