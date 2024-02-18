class CustomException implements Exception {
  String title;
  String message;

  CustomException({
    required this.title,
    required this.message,
  });
}
