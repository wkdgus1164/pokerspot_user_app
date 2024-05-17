import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class StoreDetailBasicInformation extends StatelessWidget {
  const StoreDetailBasicInformation({
    super.key,
    required this.address,
    required this.addressDetail,
    required this.runningTime,
  });

  final String address;
  final String addressDetail;
  final String runningTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey95),
        color: colorGrey98,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '기본 정보',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),

          // 주소
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colorGrey100,
                        border: Border.all(color: colorGrey95),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: const Icon(Icons.map_outlined, color: colorGrey80),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '$address,\n$addressDetail',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey50,
                          ),
                    ),
                  ],
                ),
              ),
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
          const SizedBox(height: 16),

          // 운영 시간
          _buildItem(
            context,
            Icons.access_time_outlined,
            runningTime,
          ),
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
          decoration: BoxDecoration(
            color: colorGrey100,
            border: Border.all(color: colorGrey95),
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Icon(icon, color: colorGrey80),
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
