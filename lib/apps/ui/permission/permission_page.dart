import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/permission/permission_vac.dart';
import 'package:permission_handler/permission_handler.dart';

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
    await _requestPermission();

    _routeHomePage();
  }

  Future _requestPermission() async {
    await [
      Permission.locationWhenInUse,
    ].request();
  }

  void _routeHomePage() {
    context.go(CustomRouter.home.path);
  }
}
