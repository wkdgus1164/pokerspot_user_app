import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class HomeNoticeVac extends StatelessWidget {
  const HomeNoticeVac({
    super.key,
    required this.handleClick,
    required this.createdAt,
    required this.title,
    required this.id,
  });

  final Function(String id) handleClick;
  final String createdAt;
  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handleClick(id),
      splashColor: Colors.grey.withOpacity(0.05),
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorGrey95,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '공지사항 · $createdAt',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey60,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 32),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: colorGrey80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
