enum Secret {
  mainServerOrigin('https://api.pokerspot.co.kr'),
  kakaomapServerOrigin('https://dapi.kakao.com'),
  kakaoNativeKey('6beb52328c9577c22e6dafff95efe1d6'),
  kakaoJavaScriptKey('51c209ad19ea67073c407ab3fdeaed19'),
  privacyPolicy('https://www.pokerspot.co.kr/privacy-policy'),
  ;

  const Secret(this.key);
  final String key;
}
