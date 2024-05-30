// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _StoresApi implements StoresApi {
  _StoresApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiResponse<StoresDto>> fetchStores(StoresQuery query) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(query.toJson());
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<StoresDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/stores',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<StoresDto>.fromJson(
      _result.data!,
      (json) => StoresDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<StoresDto>> fetchStoresBySearch(
    double lat,
    double lng,
    String searchText,
    int page,
    int perPage,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'lat': lat,
      r'lng': lng,
      r'searchText': searchText,
      r'page': page,
      r'perPage': perPage,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<StoresDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/stores',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<StoresDto>.fromJson(
      _result.data!,
      (json) => StoresDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<StoresDto>> fetchStoresByArea(
    double lat,
    double lng,
    String regCode,
    int page,
    int perPage,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'lat': lat,
      r'lng': lng,
      r'regCode': regCode,
      r'page': page,
      r'perPage': perPage,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<StoresDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/stores',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<StoresDto>.fromJson(
      _result.data!,
      (json) => StoresDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ApiResponse<StoreDto>> fetchStoreDetail(
    String storeId,
    StoreQuery query,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(query.toJson());
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiResponse<StoreDto>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/stores/${storeId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ApiResponse<StoreDto>.fromJson(
      _result.data!,
      (json) => StoreDto.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storesApiHash() => r'd4eb147e96abdab7b2b7f35fbd74439735cee965';

/// See also [storesApi].
@ProviderFor(storesApi)
final storesApiProvider = AutoDisposeProvider<StoresApi>.internal(
  storesApi,
  name: r'storesApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$storesApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StoresApiRef = AutoDisposeProviderRef<StoresApi>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
