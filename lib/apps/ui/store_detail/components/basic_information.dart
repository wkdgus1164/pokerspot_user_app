import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/map_view.dart';

class StoreDetailBasicInformation extends StatelessWidget {
  const StoreDetailBasicInformation({
    super.key,
    required this.address,
    required this.runningTime,
    required this.lat,
    required this.lng,
  });

  final String address;
  final String runningTime;
  final double? lat;
  final double? lng;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey95),
        color: colorGrey100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '기본 정보',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),

          // 주소
          _buildItem(
            context,
            Icons.map_outlined,
            address,
          ),
          const SizedBox(height: 16),

          // 운영 시간
          _buildItem(
            context,
            Icons.access_time_outlined,
            runningTime,
          ),

          const SizedBox(height: 16),
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

  Row _buildItem(
    BuildContext context,
    IconData icon,
    String data,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: colorGrey95,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Icon(icon, color: colorGrey60),
        ),
        const SizedBox(width: 16),
        Text(
          data,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: colorGrey50,
              ),
        ),
      ],
    );
  }
}
