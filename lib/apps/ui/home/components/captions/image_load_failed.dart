import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class ImageLoadFailed extends StatelessWidget {
  const ImageLoadFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error,
                color: Colors.black26,
              ),
              const SizedBox(height: 16),
              Text(
                '이미지를 불러오는 데에 실패했어요.',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: colorGrey50,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
