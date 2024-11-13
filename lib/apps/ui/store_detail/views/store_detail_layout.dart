import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/sliver_app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/footer_toolbar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_v2_vac.dart';

class StoreDetailLayout extends StatelessWidget {
  const StoreDetailLayout({
    super.key,
    required this.data,
    required this.showTitle,
    required this.scrollController,
    required this.scrollEffectTargetKey,
  });

  final StoreV2Model data;
  // final StoreModel data;
  final bool showTitle;
  final ScrollController scrollController;
  final GlobalKey scrollEffectTargetKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _buildScrollView(),
        ),
        StoreDetailFooterToolbar(data: data),
      ],
    );
  }

  Widget _buildScrollView() {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        StoreDetailSliverAppBar(showTitle: showTitle, data: data),
        SliverToBoxAdapter(
          child: StoreDetailV2Vac(
            data: data,
            scrollEffectTargetKey: scrollEffectTargetKey,
            openTimeCalculated: _calculateOpenTime(data.openTime),
          ),
        ),
      ],
    );
  }

  String _calculateOpenTime(String? openTime) {
    final int time = int.parse(openTime.toString().substring(0, 2));
    return time > 12 ? '오후 ${time - 12}시' : '오후 $time시';
  }
}
