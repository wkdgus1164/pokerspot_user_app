import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';
import 'package:shimmer/shimmer.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.errorText,
    this.width,
    this.height,
  });

  final String imageUrl;
  final BoxFit fit;
  final String? errorText;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, url) => _renderImageLoading(),
      errorWidget: (context, url, error) => _renderImageError(),
    );
  }

  Container _renderImageError() {
    return Container(
      color: colorGrey98,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.logoTextMinifiedColor.path,
              width: 40,
              colorFilter: const ColorFilter.mode(
                colorGrey80,
                BlendMode.srcIn,
              ),
            ),
            if (errorText != null) ...[
              const SizedBox(height: 8),
              Text(
                errorText!,
                style: textTheme.labelMedium!.copyWith(
                  color: colorGrey80,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Shimmer _renderImageLoading() {
    return Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: colorGrey98,
      highlightColor: colorGrey95,
      child: Container(
        color: colorGrey98,
      ),
    );
  }
}
