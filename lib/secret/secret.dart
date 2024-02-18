enum Secret {
  mainServerOrigin('https://api.pokerspot.co.kr'),
  ;

  const Secret(this.key);
  final String key;
}
