import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_service.dart';

class HomeLocationView extends StatefulHookConsumerWidget {
  const HomeLocationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeLocationViewState();
}

class _HomeLocationViewState extends ConsumerState<HomeLocationView> {
  @override
  Widget build(BuildContext context) {
    final locationModel = ref.watch(locationServiceProvider);

    return locationModel.when(
      data: (data) {
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
                data.address,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorGrey50,
                    ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Container();
      },
      loading: () {
        return Container(
          color: colorGrey98,
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 2,
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(colorGrey90),
                  backgroundColor: colorGrey98,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  '주소 정보를 불러오는 중...',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorGrey70,
                      ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
