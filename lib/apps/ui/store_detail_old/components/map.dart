import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/map_view.dart';

class StoreDetailMap extends StatelessWidget {
  const StoreDetailMap({
    super.key,
    required this.lat,
    required this.lng,
    required this.name,
    required this.handleButtonClick,
    required this.address,
  });

  final String name;
  final double lat;
  final double lng;
  final String address;
  final Function() handleButtonClick;

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
              '위치 정보',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          StoreDetailMapView(
            lat: lat,
            lng: lng,
          ),
          Ink(
            child: InkWell(
              onTap: handleButtonClick,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '지도 크게 보기',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: colorGrey40,
                          ),
                    ),
                    const Icon(
                      Icons.chevron_right_rounded,
                      color: colorGrey70,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
