import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_data.g.dart';
part 'area_data.freezed.dart';

@freezed
class AreaModel with _$AreaModel {
  factory AreaModel({
    @Default("11*00000") String regcodePattern,
  }) = _AreaDataModel;

  AreaModel._();
}

@riverpod
class Area extends _$Area {
  @override
  AreaModel build() {
    return AreaModel();
  }

  void setCityCode({required String cityCode}) {
    state = state.copyWith(regcodePattern: cityCode);
    ref.keepAlive();
  }
}
