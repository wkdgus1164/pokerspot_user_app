import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';

@freezed
class NoticeModel with _$NoticeModel {
  factory NoticeModel({
    required String id,
    required String title,
    required String description,
    required DateTime createdAt,
  }) = _NoticeModel;
}
