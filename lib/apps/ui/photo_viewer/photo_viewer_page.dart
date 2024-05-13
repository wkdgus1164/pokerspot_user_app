import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewerPageArguments {
  String imageUrl;

  PhotoViewerPageArguments({
    required this.imageUrl,
  });
}

class PhotoViewerPage extends StatelessWidget {
  const PhotoViewerPage({
    super.key,
    required this.args,
  });

  final PhotoViewerPageArguments args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 보기'),
      ),
      body: PhotoView(
        imageProvider: NetworkImage(args.imageUrl),
      ),
    );
  }
}
