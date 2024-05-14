import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';

class HomeLocationVac extends StatelessWidget {
  const HomeLocationVac({
    super.key,
    required this.locationModel,
  });

  final LocationModel locationModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorGrey98,
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: colorGrey70,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            locationModel.address,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorGrey50,
                ),
          ),
        ],
      ),
    );
  }
}
