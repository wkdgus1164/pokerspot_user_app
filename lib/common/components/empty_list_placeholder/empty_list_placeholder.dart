import 'package:flutter/material.dart';

class EmptyListPlaceHolder extends StatelessWidget {
  const EmptyListPlaceHolder({
    super.key,
    required this.iconData,
    required this.message,
  });

  final IconData iconData;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
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
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.grey.shade800.withOpacity(0.5),
                ),
          ),
        ],
      ),
    );
  }
}
