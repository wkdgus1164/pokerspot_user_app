import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class ClickableListItem extends StatelessWidget {
  const ClickableListItem({
    super.key,
    required this.handleClick,
    required this.title,
    this.startWidget,
    this.endWidget,
  });

  final Function() handleClick;
  final Widget? startWidget;
  final String title;
  final Widget? endWidget;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        splashColor: colorGrey95,
        onTap: handleClick,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    startWidget ?? Container(),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: colorGrey40,
                          ),
                    ),
                  ],
                ),
              ),
              endWidget ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
