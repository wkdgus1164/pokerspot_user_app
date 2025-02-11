import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/api/stores/dto/store_dto.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_ios.dart';

class StoreDetailFooterToolbar extends StatelessWidget {
  const StoreDetailFooterToolbar({
    super.key,
    required this.model,
  });

  final StoreDto model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: _buildContainerDecoration(),
      child: Row(
        children: [
          _buildToolBar(context),
          const SizedBox(width: 16),
          if (model.phone != null) _buildCallButton(),
        ],
      ),
    );
  }

  ToggleButtons _buildToolBar(BuildContext context) {
    return ToggleButtons(
      isSelected: [true, true],
      onPressed: (int index) {
        if (index == 0) {
          _showNaviBottomSheet(
            name: model.name ?? '',
            address: model.address ?? '',
            x: model.lng,
            y: model.lat,
            context: context,
          );
        } else {
          Utils().copyToClipboard(text: model.address);
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: const Icon(Icons.navigation_rounded, size: 20),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: const Icon(Icons.copy_rounded, size: 20),
        ),
      ],
    );
  }

  BoxDecoration _buildContainerDecoration() {
    return BoxDecoration(
      color: colorGrey100,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(26),
          blurRadius: 10,
          offset: const Offset(0, 0),
          spreadRadius: 0,
        ),
      ],
    );
  }

  Widget _buildCallButton() {
    return Expanded(
      child: FilledButton(
        onPressed: () => _call(model.name ?? '', model.phone ?? ''),
        child: const Text('전화 걸기'),
      ),
    );
  }

  void _showNaviBottomSheet({
    required String name,
    required String address,
    required double x,
    required double y,
    required BuildContext context,
  }) {
    if (Platform.isAndroid) {
      showModalBottomSheet(
        context: context,
        useSafeArea: true,
        builder: (context) {
          return StoreDetailNaviAndroid(
            name: name,
            address: address,
            x: x,
            y: y,
          );
        },
      );
    } else {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return StoreDetailCupertinoActionSheet(
            name: name,
            address: address,
            x: x,
            y: y,
          );
        },
      );
    }
  }

  void _call(
    String storeName,
    String phone,
  ) {
    Utils().callTo(phone: phone);

    if (kReleaseMode) {
      FirebaseAnalytics.instance.logEvent(
        name: 'phone_call',
        parameters: {
          '업소명': storeName,
          '연락처': phone,
        },
      );
    }
  }
}
