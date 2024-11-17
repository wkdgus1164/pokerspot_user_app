import 'package:flutter/cupertino.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class StoreDetailShareCupertinoActionSheet extends StatelessWidget {
  const StoreDetailShareCupertinoActionSheet({
    super.key,
    required this.handleKakaoShare,
    required this.id,
  });

  final Function() handleKakaoShare;
  final String id;

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
            text: 'https://app.pokerspot.co.kr/store/$id',
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
