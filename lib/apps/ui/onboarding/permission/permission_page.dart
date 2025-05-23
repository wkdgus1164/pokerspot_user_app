import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/onboarding/permission/permission_vac.dart';
import 'package:pokerspot_user_app/common/components/adaptive_button/adaptive_button.dart';

class PermissionPage extends StatefulHookConsumerWidget {
  const PermissionPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<PermissionPage> {
  @override
  Widget build(BuildContext context) {
    return PermissionPageVac(
      handleSubmit: _handleSubmit,
    );
  }

  Future _handleSubmit() async {
    if (await Geolocator.checkPermission() ==
        LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'deniedForever');
      showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog.adaptive(
            title: const Text('권한이 거부되었어요.'),
            content: const Text(
              '이전에 위치 권한을 거부한 기록이 있어요.\n권한이 거부될 경우 임시 위치로 검색되니, 되도록 앱 설정에서 위치 권한을 허용해 주세요.',
            ),
            actions: [
              CustomAdaptiveDialogButton(
                context: context,
                onPressed: _routeHomePage,
                child: const Text('확인'),
              ),
            ],
          );
        },
      );
    }
    _routeHomePage();
  }

  void _routeHomePage() async {
    await Geolocator.requestPermission();
    context.go(CustomRouter.main.path);
  }
}
