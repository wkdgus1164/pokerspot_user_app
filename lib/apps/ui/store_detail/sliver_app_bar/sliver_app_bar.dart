import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/sliver_app_bar/actions.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/sliver_app_bar/flexible_spacebar.dart';

class StoreDetailSliverAppBar extends StatelessWidget {
  const StoreDetailSliverAppBar({
    super.key,
    required this.showTitle,
    required this.model,
  });

  final StoreDto model;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // 앱바의 최대 높이를 설정합니다.
      // 화면 너비의 10:16 비율에서 앱바 기본 높이를 뺀 값으로 설정됩니다.
      // 이는 이미지가 16:10 비율로 표시되도록 하기 위함입니다.
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
