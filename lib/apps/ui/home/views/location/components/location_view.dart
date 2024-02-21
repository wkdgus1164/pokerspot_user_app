import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/ui/home/views/location/providers/location.dart';

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
        // final location = data.documents[0]!.address!.address_name!;

        Logger().e(data);

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
                data.documents[0]!.address!.address_name!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorGrey50,
                    ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        Logger().e(error.toString());
        return Text(error.toString());
      },
      loading: () {
        return const CircularProgressIndicator.adaptive();
      },
    );
  }
}
