import 'package:flutter/cupertino.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store.dart';

class StoreDetailShareCupertinoActionSheet extends StatelessWidget {
  const StoreDetailShareCupertinoActionSheet({
    super.key,
    required this.handleKakaoShare,
    required this.model,
  });

  final Function() handleKakaoShare;
  final StoreModel model;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(
          onPressed: handleKakaoShare,
          child: const Text('카카오톡 공유'),
        ),
        CupertinoActionSheetAction(
          onPressed: () => Utils().copyToClipboard(
            text: 'https://app.pokerspot.co.kr/store/${model.id}',
          ),
          child: const Text('링크 복사'),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('취소'),
      ),
    );
  }
}
