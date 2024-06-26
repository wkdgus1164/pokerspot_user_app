import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/common/components/dialog/dialog.dart';

extension BuildContextCustomDialogExtension on BuildContext {
  void showCustomDialog({
    required String title,
    required String content,
    VoidCallback? onConfirm,
    required String confirmText,
    VoidCallback? onCancel,
    required String cancelText,
  }) {
    final autoDismiss = onConfirm == null;

    if (Platform.isAndroid) {
      showDialog(
        barrierDismissible: autoDismiss,
        context: this,
        builder: (context) {
          return CustomDialog(
            title: title,
            content: content,
            confirmText: confirmText,
            cancelText: cancelText,
            onConfirm: () {
              onConfirm?.call();
              if (autoDismiss) {
                Navigator.pop(context);
              }
            },
            onCancel: () {
              onCancel?.call();
              if (autoDismiss) {
                Navigator.pop(context);
              }
            },
          );
        },
      );
    } else {
      showCupertinoDialog(
        context: this,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              if (onCancel != null)
                CupertinoDialogAction(
                  onPressed: onCancel,
                  child: Text(cancelText),
                ),
              CupertinoDialogAction(
                onPressed: onConfirm ?? () {},
                child: Text(confirmText),
              ),
            ],
          );
        },
      );
    }

    return;
  }
}
