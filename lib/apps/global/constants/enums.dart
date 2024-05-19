enum GameType {
  daily("DAILY", '데일리'),
  seed('SEED', '시드권'),
  gtd('GTD', 'GTD'),
  all('ALL', '전체'),
  ;

  const GameType(this.value, this.kr);
  final String value;
  final String kr;
}

enum OperationStatus {
  all('ALL', '전체'),
  open('OPEN', '운영 중'),
  ;

  const OperationStatus(this.value, this.kr);
  final String value;
  final String kr;
}
