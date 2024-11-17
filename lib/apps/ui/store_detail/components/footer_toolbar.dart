import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_android.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/bottom_sheets/navigation/navi_ios.dart';
import 'package:pokerspot_user_app/common/components/tonal_button.dart';

class StoreDetailFooterToolbar extends StatelessWidget {
  const StoreDetailFooterToolbar({
    super.key,
    required this.model,
  });

  final StoreV2Model model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: _buildContainerDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              // 네비게이션 버튼
              _buildNavigationButton(context),
              const SizedBox(width: 16),

              // 주소 복사 버튼
              _buildCopyAddressButton(),
            ],
          ),
          const SizedBox(height: 16),

          // 전화 걸기 버튼
          _buildCallButton(),
        ],
      ),
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
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 0),
          spreadRadius: 0,
        ),
      ],
    );
  }

  Widget _buildNavigationButton(BuildContext context) {
    return Expanded(
      child: TonalButton(
        onPressed: () => _showNaviBottomSheet(
          name: model.name,
          address: model.address,
          x: model.lng,
          y: model.lat,
          context: context,
        ),
        child: const Text('길안내'),
      ),
    );
  }

  Widget _buildCopyAddressButton() {
    return Expanded(
      child: TonalButton(
        onPressed: () => Utils().copyToClipboard(text: model.address),
        child: const Text('주소 복사'),
      ),
    );
  }

  Widget _buildCallButton() {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () => _call(model.name, model.phone),
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
