import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';

@freezed
class AreaListModel with _$AreaListModel {
  factory AreaListModel({
    required List<AreaModel> regcodes,
  }) = _AreaListModel;
}

@freezed
class AreaModel with _$AreaModel {
  factory AreaModel({
    required String code,
    required String name,
  }) = _AreaModel;
}
