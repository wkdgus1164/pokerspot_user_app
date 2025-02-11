import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/providers/store.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/sliver_app_bar/sliver_app_bar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/components/footer_toolbar.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/store_detail_vac.dart';

class StoreDetailLayout extends StatelessWidget {
  const StoreDetailLayout({
    super.key,
    required this.showTitle,
    required this.scrollController,
    required this.scrollEffectTargetKey,
    required this.model,
  });

  final bool showTitle;
  final ScrollController scrollController;
  final GlobalKey scrollEffectTargetKey;
  final StoreModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: _buildScrollView(context)),
        SafeArea(child: StoreDetailFooterToolbar(model: model)),
      ],
    );
  }

  Widget _buildScrollView(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        StoreDetailSliverAppBar(
          showTitle: showTitle,
          model: model,
        ),
        SliverToBoxAdapter(
          child: StoreDetailVac(
            model: model,
            scrollEffectTargetKey: scrollEffectTargetKey,
            openTime: Utils().getFormattedTime(time: model.openTime),
            closeTime: Utils().getFormattedTime(time: model.closeTime),
          ),
        ),
      ],
    );
  }
}
