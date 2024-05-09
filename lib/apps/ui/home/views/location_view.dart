import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/captions/gps_error.dart';
import 'package:pokerspot_user_app/apps/ui/home/components/captions/gps_loading.dart';
import 'package:pokerspot_user_app/apps/ui/home/providers/location_name.dart';

class HomeLocationView extends StatefulHookConsumerWidget {
  const HomeLocationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeLocationViewState();
}

class _HomeLocationViewState extends ConsumerState<HomeLocationView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(locationNameProvider);

    return res.when(
      data: (data) {
        Logger().d(data);
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
              if (data.documents.isNotEmpty) ...[
                Text(
                  data.documents[0]!.address.address_name,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorGrey50,
                      ),
                ),
              ],
              if (data.documents.isEmpty) ...[
                Text(
                  '주소정보없음',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorGrey50,
                      ),
                ),
              ],
            ],
          ),
        );
      },
      error: (error, _) {
        Logger().e('위치 정보 수집 실패!\n $error: ');
        return const HomeGpsError();
      },
      loading: () => const HomeGpsLoading(),
    );
  }
}
