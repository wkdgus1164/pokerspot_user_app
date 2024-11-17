import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/sliver_app_bar/actions.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/sliver_app_bar/flexible_spacebar.dart';

class StoreDetailSliverAppBar extends StatelessWidget {
  const StoreDetailSliverAppBar({
    super.key,
    required this.showTitle,
    required this.model,
  });

  final StoreV2Model model;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight:
          MediaQuery.of(context).size.width * 10 / 16 - kToolbarHeight,
      pinned: true,
      backgroundColor: showTitle ? Colors.white : Colors.transparent,
      systemOverlayStyle: _buildSystemOverlayStyle(),
      iconTheme: IconThemeData(
        color: showTitle ? Colors.black : Colors.white,
      ),
      title: AnimatedOpacity(
        opacity: showTitle ? 1 : 0,
        duration: Duration(milliseconds: 0),
        child: Text(model.name),
      ),
      flexibleSpace: StoreDetailSliverAppBarFlexibleSpaceBar(
        storeImages: model.storeImages,
        distance: model.distance,
      ),
      actions: buildStoreDetailSliverAppBarBuildActions(
        context: context,
        model: model,
        showTitle: showTitle,
      ),
    );
  }

  SystemUiOverlayStyle _buildSystemOverlayStyle() {
    return SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: showTitle ? Brightness.dark : Brightness.light,
      statusBarBrightness: showTitle ? Brightness.light : Brightness.dark,
    );
  }
}
