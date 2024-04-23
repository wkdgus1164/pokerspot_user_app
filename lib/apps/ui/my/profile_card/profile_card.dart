import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/theme/typo.dart';

class MyProfileCard extends StatelessWidget {
  const MyProfileCard({
    super.key,
    required this.name,
    required this.createdAt,
    required this.handleEditClick,
  });

  final String name;
  final DateTime createdAt;
  final Function() handleEditClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorGrey90),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: textTheme.titleLarge!.copyWith(
                      color: colorGrey20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${createdAt.year}년 ${createdAt.month}월 ${createdAt.day}일 가입',
                    style: textTheme.labelLarge!.copyWith(
                      color: colorGrey60,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: handleEditClick,
                icon: const Icon(
                  Icons.settings_rounded,
                  color: colorGrey60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
