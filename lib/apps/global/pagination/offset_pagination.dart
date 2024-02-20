import 'package:freezed_annotation/freezed_annotation.dart';

part 'offset_pagination.freezed.dart';

@freezed
class OffsetPaginationMetaData with _$OffsetPaginationMetaData {
  factory OffsetPaginationMetaData({
    @Default(1) int currentPage,
    @Default(false) bool isLast,
  }) = _OffsetPaginationMetaData;
}

@Freezed(genericArgumentFactories: true)
class WithOffsetPagination<T> with _$WithOffsetPagination<T> {
  factory WithOffsetPagination({
    required T items,
  }) = _WithOffsetPagination;
}
