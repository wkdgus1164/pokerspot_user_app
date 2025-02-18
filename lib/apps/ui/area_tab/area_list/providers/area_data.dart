import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_data.g.dart';
part 'area_data.freezed.dart';

@freezed
class AreaDataModel with _$AreaDataModel {
  factory AreaDataModel({
    @Default("서울특별시") String name,
    @Default("11*00000") String regCode,
  }) = _AreaDataModel;

  AreaDataModel._();
}

@riverpod
class AreaDataService extends _$AreaDataService {
  @override
  AreaDataModel build() {
    return AreaDataModel(
      name: '서울특별시',
      regCode: '11*00000',
    );
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
