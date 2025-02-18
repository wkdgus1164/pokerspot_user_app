import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_index.g.dart';
part 'page_index.freezed.dart';

@freezed
class BottomNavigationPageIndexModel with _$BottomNavigationPageIndexModel {
  factory BottomNavigationPageIndexModel({
    required int index,
  }) = _BottomNavigationPageIndexModel;
}

@riverpod
class BottomNavigationPageIndexData extends _$BottomNavigationPageIndexData {
  @override
  BottomNavigationPageIndexModel build() {
    return BottomNavigationPageIndexModel(index: 0);
  }

  void setPageIndex(int index) {
    state = state.copyWith(index: index);
  }
}
