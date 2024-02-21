import 'package:flutter/material.dart';

class ImageLoadFailed extends StatelessWidget {
  const ImageLoadFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error,
                color: Colors.black26,
              ),
              SizedBox(height: 16),
              Text(
                '이미지를 불러오는 데에 실패했어요.',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
