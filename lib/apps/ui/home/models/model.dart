import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class StoresModel with _$StoresModel {
  factory StoresModel({
    required int id,
    required String type,
    required String name,
  }) = _StoresModel;
}
