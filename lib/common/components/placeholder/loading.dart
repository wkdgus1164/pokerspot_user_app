import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({
    super.key,
    this.loadingHeaderText,
    this.message,
  });

  final String? loadingHeaderText;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: loadingHeaderText != null
            ? Text(loadingHeaderText!)
            : const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(),
              ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 8),
            if (message != null)
              Text(
                message!,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: colorGrey80,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
