import 'package:freezed_annotation/freezed_annotation.dart';

part 'offset_pagination.freezed.dart';

@Freezed(genericArgumentFactories: true)
class WithOffsetPagination<T> with _$WithOffsetPagination<T> {
  factory WithOffsetPagination({
    @Default(1) int page,
    @Default(20) int perPage,
    @Default(100) int totalPage,
    @Default(0) int totalCount,
    required T items,
  }) = _WithOffsetPagination;
}
