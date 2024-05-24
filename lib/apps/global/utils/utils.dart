import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  /// [text] 클립보드에 복사할 텍스트
  void copyToClipboard({String? text}) {
    if (text != null) {
      Clipboard.setData(ClipboardData(text: text));
      Fluttertoast.showToast(msg: '주소가 복사되었어요.');
    } else {
      Fluttertoast.showToast(msg: '주소 정보가 없어요.');
      return;
    }
  }

  /// [phone] 전화를 연결할 번호
  void callTo({String? phone}) {
    final phoneIntent = "tel://$phone";

    if (phone != null) {
      launchUrl(Uri.parse(phoneIntent));
      Fluttertoast.showToast(msg: '전화 연결 중...');
    } else {
      Fluttertoast.showToast(msg: '연락처 정보가 없어요.');
      return;
    }
  }

  /// [distance] 미터 단위의 거리
  String getFormattedDistance({required double distance}) {
    return distance < 1000
        ? '${distance.toStringAsFixed(0)}m'
        : '${(distance / 1000).toStringAsFixed(2)}km';
  }
}
