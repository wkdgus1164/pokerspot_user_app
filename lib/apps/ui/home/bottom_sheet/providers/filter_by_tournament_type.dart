import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_tournament_type.g.dart';
part 'filter_by_tournament_type.freezed.dart';

enum TournamentType {
  all('ALL'),
  daily('DAILY'),
  seed('SEED'),
  gtd('GTD'),
  ;

  const TournamentType(this.key);
  final String key;
}

@freezed
class FilterByTournamentTypeModel with _$FilterByTournamentTypeModel {
  factory FilterByTournamentTypeModel({
    @Default(TournamentType.all) TournamentType tournamentType,
  }) = _FilterByTournamentTypeModel;

  FilterByTournamentTypeModel._();
}

@riverpod
class FilterByTournamentType extends _$FilterByTournamentType {
  @override
  FilterByTournamentTypeModel build() {
    return FilterByTournamentTypeModel(tournamentType: TournamentType.all);
  }

  void setAll() {
    state = state.copyWith(tournamentType: TournamentType.all);
    ref.keepAlive();
  }

  void setDaily() {
    state = state.copyWith(tournamentType: TournamentType.daily);
    ref.keepAlive();
  }

  void setSeed() {
    state = state.copyWith(tournamentType: TournamentType.seed);
    ref.keepAlive();
  }

  void setGTD() {
    state = state.copyWith(tournamentType: TournamentType.gtd);
    ref.keepAlive();
  }
}
