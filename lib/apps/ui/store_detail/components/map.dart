import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              StoreDetailMapView(
                lat: lat,
                lng: lng,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: colorGrey95),
                    boxShadow: const [
                      BoxShadow(
                        color: colorGrey90,
                        blurRadius: 8,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: handleButtonClick,
                    icon: const Icon(
                      Icons.open_in_full_rounded,
                      color: colorBrand60,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Text(
                  address,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: colorGrey50,
                      ),
                ),
              ),
              const SizedBox(width: 32),
              TextButton.icon(
                onPressed: () => Utils().copyToClipboard(text: address),
                label: const Text('복사'),
                icon: const Icon(Icons.copy_rounded, size: 20),
                style: TextButton.styleFrom(
                  iconColor: colorGrey80,
                  foregroundColor: colorGrey80,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
