import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';

class Utils {
  /// [text] 클립보드에 복사할 텍스트
  void copyToClipboard({String? text}) {
    if (text != null) {
      Share.share(text);
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

  /// 현재 위치를 가져옵니다.
  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition();
  }

  /// 시간을 현재 시간으로부터 얼마나 지났는지 표시합니다.
  /// [dateTime] 계산할 DateTime 시간
  String getFormattedTimeAgo({required DateTime dateTime}) {
    return timeago.format(dateTime, locale: 'ko');
  }

  ///  DateTime 을 한국 시간으로 표시합니다.
  /// [dateTime] 표시할 DateTime 시간
  String getFormattedTime({required String time}) {
    try {
      final DateTime dateTime = DateFormat('HH:mm:ss').parse(time);
      final hour = dateTime.hour;
      final minute = dateTime.minute;
      final second = dateTime.second;

      final period = hour >= 12 ? '오후' : '오전';
      final displayHour = hour > 12
          ? hour - 12
          : hour == 0
              ? 12
              : hour;

      var result = '$period $displayHour시';
      if (minute > 0) result += ' $minute분';
      if (second > 0) result += ' $second초';

      return result;
    } catch (e) {
      return '오전 12시';
    }
  }
}
