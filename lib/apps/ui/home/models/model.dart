import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class StoresMainItemModel with _$StoresMainItemModel {
  factory StoresMainItemModel({
    required int id,
    required String type,
    required String name,
  }) = _StoresMainItemModel;
}
