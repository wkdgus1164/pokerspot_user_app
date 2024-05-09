import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAdaptiveDialogButton extends StatelessWidget {
  const CustomAdaptiveDialogButton({
    super.key,
    required this.context,
    required this.onPressed,
    required this.child,
  });

  final BuildContext context;
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(
          onPressed: onPressed,
          child: child,
        );
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(
          onPressed: onPressed,
          child: child,
        );
    }
  }
}
