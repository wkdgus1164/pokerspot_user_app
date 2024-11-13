import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/fab.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_layout.dart';
import 'package:pokerspot_user_app/common/components/placeholder/error.dart';
import 'package:pokerspot_user_app/common/components/placeholder/loading.dart';

class StoreDetailPage extends StatefulHookConsumerWidget {
  const StoreDetailPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreDetailPageState();
}

class _StoreDetailPageState extends ConsumerState<StoreDetailPage> {
  String get _storeId => widget.id;
  bool _showTitle = false;

  final GlobalKey _scrollEffectTargetWidgetKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreDetailPage\n  store id: $_storeId');
    final res = ref.watch(storeV2DataProvider.call(_storeId));

    return res.when(
      data: (data) {
        return Scaffold(
          floatingActionButton: _buildKakaoChat(data),
          body: StoreDetailLayout(
            data: data,
            showTitle: _showTitle,
            scrollController: _scrollController,
            scrollEffectTargetKey: _scrollEffectTargetWidgetKey,
          ),
        );
      },
      error: (error, stackTrace) {
        return ErrorPlaceholder(error: error.toString());
      },
      loading: () {
        return const LoadingPlaceholder(loadingHeaderText: '-');
      },
    );
  }

  Widget _buildKakaoChat(StoreV2Model data) {
    return _kakaoChatUrl(
      name: data.name ?? "",
      url: data.kakaoChatUrl,
    );
  }

  Widget _kakaoChatUrl({
    required String name,
    required String? url,
  }) {
    if (url == null) {
      return const SizedBox();
    } else {
      return StoreDetailFab(name: name, url: url);
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleRenderWhiteAppBar);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleRenderWhiteAppBar);
    super.dispose();
  }

  void _handleRenderWhiteAppBar() {
    // 스크롤 이펙트 타겟이 헤더의 바로 아래에 위치하면 타이틀을 보여준다.
    final double whiteAppBarEffectTarget =
        (_scrollEffectTargetWidgetKey.currentContext!.findRenderObject()
                as RenderBox)
            .localToGlobal(Offset.zero)
            .dy;

    if (whiteAppBarEffectTarget <= kToolbarHeight + 40 && !_showTitle) {
      setState(() => _showTitle = true);
    } else if (whiteAppBarEffectTarget > kToolbarHeight + 40 && _showTitle) {
      setState(() => _showTitle = false);
    }
  }
}
