import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/dto/notice_dto.dart';

part 'notices_dto.freezed.dart';
part 'notices_dto.g.dart';

@freezed
class NoticesDto with _$NoticesDto {
  factory NoticesDto({
    required int page,
    required int perPage,
    required int totalPage,
    required int totalCount,
    required List<NoticeDto> items,
  }) = _NoticesDto;

  factory NoticesDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NoticesDtoFromJson(json);
}
