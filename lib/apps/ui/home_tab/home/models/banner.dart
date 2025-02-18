import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

@freezed
class BannerModel with _$BannerModel {
  factory BannerModel({
    required String id,
    required String imageUrl,
  }) = _BannerModel;
}
