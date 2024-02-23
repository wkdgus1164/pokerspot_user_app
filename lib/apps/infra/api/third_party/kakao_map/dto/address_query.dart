import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_query.freezed.dart';
part 'address_query.g.dart';

@freezed
class AddressSearchQuery with _$AddressSearchQuery {
  factory AddressSearchQuery({
    required double x,
    required double y,
  }) = _AddressSearchQuery;

  factory AddressSearchQuery.fromJson(Map<String, dynamic> json) =>
      _$AddressSearchQueryFromJson(json);
}
