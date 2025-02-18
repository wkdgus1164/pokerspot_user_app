import 'package:pokerspot_user_app/apps/infra/api/notices/notices_api.dart';
import 'package:pokerspot_user_app/apps/ui/my_tab/notice/models/notice.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notice_detail.g.dart';

@riverpod
class NoticeDetailService extends _$NoticeDetailService {
  @override
  FutureOr<NoticeModel> build(String id) {
    return _fetch(id: id);
  }

  Future<NoticeModel> _fetch({required String id}) async {
    final res = await ref.read(noticesApiProvider).fetchNotice(id);

    final data = res.data;
    if (data == null) {
      throw Error();
    }

    return NoticeModel(
      id: id,
      title: data.title,
      description: data.description,
      createdAt: data.createdAt,
    );
  }
}
