import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class CustomListFooter extends StatelessWidget {
  const CustomListFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      alignment: Alignment.center,
      child: const Text(
        '더보기',
        style: TextStyle(color: colorGrey80),
      ),
    );
  }
}

class WithListFooter extends StatelessWidget {
  const WithListFooter({
    super.key,
    required this.child,
    this.onClick,
  });

  final Function()? onClick;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (onClick == null) return child;

    return Column(
      children: [
        child,
        InkWell(
          onTap: onClick,
          child: const CustomListFooter(),
        )
      ],
    );
  }
}
