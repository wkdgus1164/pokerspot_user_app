import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/ui/area/components/main_category.dart';
import 'package:pokerspot_user_app/apps/ui/area/components/sub_category.dart';

class AreaPage extends StatefulHookConsumerWidget {
  const AreaPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AreaPageState();
}

class _AreaPageState extends ConsumerState<AreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('지역으로 찾기'),
      ),
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AreaMainCategory(
                  text: '서울',
                  isSelected: true,
                  handleClick: () {},
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 20,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            color: Colors.transparent,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AreaSubCategory(
                  text: '강남구',
                  handleClick: () {},
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
