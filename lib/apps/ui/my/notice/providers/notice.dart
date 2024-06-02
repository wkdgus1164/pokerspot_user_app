import 'dart:async';

import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/pagination/offset_pagination.dart';
import 'package:pokerspot_user_app/apps/global/utils/extensions.dart';
import 'package:pokerspot_user_app/apps/infra/api/notices/notices_api.dart';
import 'package:pokerspot_user_app/apps/ui/my/notice/models/notice.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notice.g.dart';

typedef Models = WithOffsetPagination<List<NoticeModel>?>;

@riverpod
class NoticeService extends _$NoticeService {
  @override
  FutureOr<Models> build() {
    return _fetch();
  }

  Future<Models> _fetch() async {
    final res = await ref.read(noticesApiProvider).fetchNotices(
          1,
          PAGE_SIZE,
        );

    Logger().i('res : ${res.data}');

    return WithOffsetPagination(
      items: res.data?.items.toNoticeListModel(),
      page: res.data?.page ?? 1,
      perPage: res.data?.perPage ?? 10,
    );
  }

  Future fetchNextData() async {
    final old = state.requireValue;

    final WithOffsetPagination(
      page: page,
      perPage: perPage,
      items: items,
    ) = old;

    final nextPage = page + 1;

    state = await AsyncValue.guard(() async {
      final res = await ref.read(noticesApiProvider).fetchNotices(
            nextPage,
            PAGE_SIZE,
          );

      final data = res.data;
      if (data == null) return old;

      final newItems = data.items.toNoticeListModel();

      return WithOffsetPagination(
        items: items! + newItems,
        page: nextPage,
        perPage: perPage,
      );
    });
  }
}
