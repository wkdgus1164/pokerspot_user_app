enum GameType {
  DAILY('데일리 토너'),
  SEED('시드권 토너'),
  GTD('GTD 토너'),
  ALL('전체'),
  MTT("MTT"),
  ;

  const GameType(this.kr);
  final String kr;
}

enum EventType {
  NORMAL('일반'),
  FIRST_GAME('첫 게임'),
  ;

  const EventType(this.kr);
  final String kr;
}

enum StoreBenefitType {
  FIRST_GAME('첫 게임'),
  NEW_USER('신규 방문'),
  ;

  const StoreBenefitType(this.kr);
  final String kr;
}

enum OperationStatus {
  ALL('전체'),
  OPEN('운영 중'),
  ;

  const OperationStatus(this.kr);
  final String kr;
}

enum EntryType {
  CASH('현금', '만원'),
  TICKET('매장이용권', '장'),
  POINT('매장포인트', 'P'),
  ;

  const EntryType(this.kr, this.unit);
  final String kr;
  final String unit;
}

enum PrizeType {
  CASH('현금', '만원'),
  TICKET('매장이용권', '장'),
  POINT('매장포인트', 'P'),
  ;

  const PrizeType(this.kr, this.unit);
  final String kr;
  final String unit;
}
