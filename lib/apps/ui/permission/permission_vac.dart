import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class PermissionPageVac extends StatelessWidget {
  const PermissionPageVac({
    super.key,
    required this.handleSubmit,
  });

  final Function() handleSubmit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '편리한 포커스팟 사용을 위해\n권한을 허용해주세요.',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorGrey20,
                            ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        '선택 접근 권한',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: colorBrand60,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              color: colorBrand95,
                            ),
                            child: const Icon(
                              Icons.location_on_rounded,
                              size: 24,
                              color: colorBrand40,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '위치',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: colorBrand40,
                                    ),
                              ),
                              Text(
                                '내 위치 주변의 업소 정보 찾기',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: colorGrey60,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: colorGrey95,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      '선택 항목은 필요한 시점에 동의 받고 있으며, 동의하지 않으셔도 앱을 사용하실 수 있어요.',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: colorGrey60,
                          ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: handleSubmit,
                    child: const Text('확인'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
