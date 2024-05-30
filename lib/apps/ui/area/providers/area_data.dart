import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_data.g.dart';
part 'area_data.freezed.dart';

@freezed
class AreaModel with _$AreaModel {
  factory AreaModel({
    @Default("서울특별시") String name,
    @Default("11*00000") String regCode,
  }) = _AreaDataModel;

  AreaModel._();
}

@riverpod
class Area extends _$Area {
  @override
  AreaModel build() {
    return AreaModel();
  }

  void setCityCode({required String regCode}) {
    state = state.copyWith(regCode: regCode);
    Logger().i('cityCode : $regCode');
    ref.keepAlive();
  }

  void setCityName({required String name}) {
    state = state.copyWith(name: name);
    Logger().i('cityName : $name');
    ref.keepAlive();
  }
}
