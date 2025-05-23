const String assetPath = 'assets';

enum Assets {
  logoImageColor('$assetPath/logo_image_color.svg'),
  logoImageWhite('$assetPath/logo_image_white.svg'),
  logoTextColor('$assetPath/logo_text_color.svg'),
  logoTextMinifiedColor('$assetPath/logo_text_minified_color.svg'),
  logoTextMinifiedWhite('$assetPath/logo_text_minified_white.svg'),
  logoTextWhite('$assetPath/logo_text_white.svg'),

  bnHomeOn('$assetPath/bn_home_on.svg'),
  bnHomeOff('$assetPath/bn_home_off.svg'),
  bnNearOff('$assetPath/bn_near_off.svg'),
  bnNearOn('$assetPath/bn_near_on.svg'),
  searchOff('$assetPath/bn_search_off.svg'),
  searchOn('$assetPath/search.svg'),
  bnLocOff('$assetPath/bn_loc_off.svg'),
  bnFavOff('$assetPath/bn_fav_off.svg'),
  bnFavOn('$assetPath/bn_fav_on.svg'),
  bnLocOn('$assetPath/bn_loc_on.svg'),
  bnMyOff('$assetPath/bn_my_off.svg'),
  bnMyOn('$assetPath/bn_my_on.svg'),
  bnMoreOff('$assetPath/bn_more_off.svg'),
  bnMoreOn('$assetPath/bn_more_on.svg'),

  myRecentView('$assetPath/my_recent_view.svg'),
  myFavorite('$assetPath/my_favorite.svg'),
  myNotice('$assetPath/my_notice.svg'),
  myEvent('$assetPath/my_event.svg'),
  myTerms('$assetPath/my_terms.svg'),

  arrowRight('$assetPath/arrow_right.svg'),
  code('$assetPath/code.svg'),
  info('$assetPath/info.svg'),

  kakao('$assetPath/kakao.svg'),
  apple('$assetPath/apple.svg'),
  appleMaps('$assetPath/apple_maps.svg'),
  marker('$assetPath/marker.png'),
  kakaonavi('$assetPath/kakaonavi.svg'),
  kakaomap('$assetPath/kakaomap.png'),
  searchPrefix('$assetPath/search_prefix.svg'),

  gameDaily('$assetPath/game_daily.svg'),
  gameGTD('$assetPath/game_gtd.svg'),

  firstGameBenefits('$assetPath/first_game_benefits.png'),
  newGameBenefits('$assetPath/new_benefits.png'),
  ;

  const Assets(this.path);
  final String path;
}
