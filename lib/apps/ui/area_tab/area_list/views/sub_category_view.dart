import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/components/sub_category.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_list/providers/area_service.dart';
import 'package:pokerspot_user_app/apps/ui/area_tab/area_detail/area_detail_page.dart';

class AreaSubCategoryView extends StatefulHookConsumerWidget {
  const AreaSubCategoryView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AreaSubCategoryViewState();
}

class _AreaSubCategoryViewState extends ConsumerState<AreaSubCategoryView> {
  @override
  Widget build(BuildContext context) {
    final res = ref.watch(areaServiceProvider);

    return res.when(
      data: (data) {
        Logger().i('data : $data');
        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            if (index == 0) {
              return AreaSubCategory(
                text: '전체',
                handleClick: () {
                  Logger().i(data[index].code);
                  Logger().i(data[index].name);

                  ref.read(areaDataServiceProvider.notifier).setCityCode(
                        regCode: '${data[index].code.substring(0, 2)}*',
                      );

                  context.push(
                    CustomRouter.areaSearchList.path,
                    extra: AreaDetailPageArgs(
                      areaCode: '${data[index].code.substring(0, 2)}*',
                      areaName: data[index].name,
                    ),
                  );
                },
              );
            }
            return AreaSubCategory(
              text: data[index].name.split(' ').skip(1).join(' '),
              handleClick: () {
                Logger().i('${data[index].code.substring(0, 5)}*');
                Logger().i(data[index].name);

                final codeSubstring = data[index].name.split(' ').length == 2
                    ? '${data[index].code.substring(0, 4)}*'
                    : '${data[index].code.substring(0, 5)}*';

                ref.read(areaDataServiceProvider.notifier).setCityCode(
                      regCode: codeSubstring,
                    );

                context.push(
                  CustomRouter.areaSearchList.path,
                  extra: AreaDetailPageArgs(
                    areaCode: '${data[index].code.substring(0, 5)}*',
                    areaName: data[index].name,
                  ),
                );
              },
            );
          },
          itemCount: data.length,
        );
      },
      error: (error, _) {
        Logger().e('error : $error');
        return Center(
          child: Text('Error: $error'),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
