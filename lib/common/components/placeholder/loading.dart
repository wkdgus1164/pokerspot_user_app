import 'package:flutter/material.dart';

class LoadingPlaceholder extends StatelessWidget {
  const LoadingPlaceholder({
    super.key,
    this.loadingHeaderText,
  });

  final String? loadingHeaderText;

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
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
