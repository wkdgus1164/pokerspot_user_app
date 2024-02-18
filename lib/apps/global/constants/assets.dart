const String assetPath = 'assets';

enum Assets {
  logoImageColor('$assetPath/logo_image_color.svg'),
  logoImageWhite('$assetPath/logo_image_white.svg'),
  logoTextColor('$assetPath/logo_text_color.svg'),
  logoTextMinifiedColor('$assetPath/logo_text_minified_color.svg'),
  logoTextMinifiedWhite('$assetPath/logo_text_minified_white.svg'),
  logoTextWhite('$assetPath/logo_text_white.svg'),
  ;

  const Assets(this.path);
  final String path;
}
