import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/map_view.dart';

class StoreDetailMap extends StatelessWidget {
  const StoreDetailMap({
    super.key,
    required this.lat,
    required this.lng,
  });

  final double? lat;
  final double? lng;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey95),
        color: colorGrey98,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              '지도 정보',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          if (lat != null && lng != null) ...[
            StoreDetailMapView(
              lat: lat!,
              lng: lng!,
            ),
          ],
        ],
      ),
    );
  }
}
