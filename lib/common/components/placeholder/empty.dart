import 'package:flutter/material.dart';

class EmptyListPlaceHolder extends StatelessWidget {
  const EmptyListPlaceHolder({
    super.key,
    this.appBarTitle = const Icon(Icons.info_rounded),
    this.iconData = Icons.info_rounded,
    this.message = '아직 데이터가 없어요.',
  });

  final Widget appBarTitle;
  final IconData iconData;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appBarTitle),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            iconData,
            size: 36,
            color: Colors.grey.shade800.withOpacity(0.5),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.grey.shade800.withOpacity(0.5),
                ),
          ),
        ],
      ),
    );
  }
}
