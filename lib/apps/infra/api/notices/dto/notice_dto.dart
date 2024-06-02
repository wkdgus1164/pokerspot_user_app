import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_dto.freezed.dart';
part 'notice_dto.g.dart';

@freezed
class NoticeDto with _$NoticeDto {
  factory NoticeDto({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
  }) = _NoticeDto;

  factory NoticeDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NoticeDtoFromJson(json);
}
