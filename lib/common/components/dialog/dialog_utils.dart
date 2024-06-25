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

    return;
  }
}
