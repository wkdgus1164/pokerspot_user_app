import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/fab.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_layout.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store.dart';
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

  final GlobalKey _scrollEffectTargetKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  void _scrollListener() {
    final RenderBox scrollEffectTargetBox =
        _scrollEffectTargetKey.currentContext!.findRenderObject() as RenderBox;

    final double scrollEffectTargetPosition =
        scrollEffectTargetBox.localToGlobal(Offset.zero).dy;

    if (scrollEffectTargetPosition <= kToolbarHeight && !_showTitle) {
      setState(() => _showTitle = true);
    } else if (scrollEffectTargetPosition > kToolbarHeight && _showTitle) {
      setState(() => _showTitle = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    Logger().i('StoreDetailPage\n  store id: $_storeId');
    final res = ref.watch(storeDataProvider.call(_storeId));

    return res.when(
      data: (data) {
        return Scaffold(
          floatingActionButton: _buildKakaoChat(data),
          body: StoreDetailLayout(
            data: data,
            showTitle: _showTitle,
            scrollController: _scrollController,
            scrollEffectTargetKey: _scrollEffectTargetKey,
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

  Widget _buildKakaoChat(StoreModel data) {
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
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }
}
