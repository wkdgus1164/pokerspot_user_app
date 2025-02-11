import 'package:pokerspot_user_app/apps/global/exception/custom_exception.dart';

/// signup
class RequiredTermsNotAllowedException extends CustomException {
  static String code = "REQUIRED_TERMS_NOT_ALLOWED";

  RequiredTermsNotAllowedException({
    super.title = "필수 약관 누락",
    super.message = "필수 이용약관이 동의되지 않았습니다.",
  });
}

class AlreadyUsedUsernameException extends CustomException {
  static String code = "ALREADY_USED_USERNAME";

  AlreadyUsedUsernameException({
    super.title = "이미 사용중인 아이디",
    super.message = "이미 사용중인 아이디 입니다.",
  });
}

/// member
class BannedMemberException extends CustomException {
  static String code = "BANNED_MEMBER";

  BannedMemberException({
    super.title = "차단된 회원",
    super.message = "해당 회원은 서비스 이용 제한된 상태입니다.",
  });
}

/// find member info
class NotFoundMemberException extends CustomException {
  static String code = "NOT_FOUND_MEMBER";

  NotFoundMemberException({
    super.title = "회원 조회 실패",
    super.message = "회원이 존재하지 않습니다.",
  });
}

/// teacher
class NotFoundTeacherException extends CustomException {
  static String code = "NOT_FOUND_TEACHER";

  NotFoundTeacherException({
    super.title = "강사 조회 실패",
    super.message = "강사가 존재하지 않습니다.",
  });
}

class LeavedTeacherException extends CustomException {
  static String code = "LEAVED_TEACHER";

  LeavedTeacherException({
    super.title = "탈퇴한 강사",
    super.message = "탈퇴한 강사입니다.",
  });
}

/// posts
class NotFoundPostException extends CustomException {
  static String code = "NOT_FOUND_POST";

  NotFoundPostException({
    super.title = "게시글 조회 실패",
    super.message = "게시글이 존재하지 않습니다.",
  });
}

/// tool categories
class NotFoundToolCategoriesException extends CustomException {
  static String code = "NOT_FOUND_TOOL_CATEGORIES";

  NotFoundToolCategoriesException({
    super.title = "툴 카테고리 불러오기 실패",
    super.message = "툴 카테고리가 존재하지 않습니다.",
  });
}

class NotFoundStoreException extends CustomException {
  static String code = "NOT_FOUND_STORE";

  NotFoundStoreException({
    super.title = "매장 조회 실패",
    super.message = "매장 정보를 찾을 수 없습니다.",
  });
}
