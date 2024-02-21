enum Secret {
  mainServerOrigin('https://api.pokerspot.co.kr'),
  kakaomapServerOrigin('https://dapi.kakao.com'),
  ;

  const Secret(this.key);
  final String key;
}
