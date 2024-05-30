import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/global/routes/routes.dart';
import 'package:pokerspot_user_app/apps/ui/area/components/sub_category.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_data.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_service.dart';
import 'package:pokerspot_user_app/apps/ui/area_search_list/list_page.dart';

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
                    extra: AreaSearchListPageArguments(
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

                ref.read(areaDataServiceProvider.notifier).setCityCode(
                      regCode: '${data[index].code.substring(0, 5)}*',
                    );

                context.push(
                  CustomRouter.areaSearchList.path,
                  extra: AreaSearchListPageArguments(
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
        return const Expanded(
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
  }
}
