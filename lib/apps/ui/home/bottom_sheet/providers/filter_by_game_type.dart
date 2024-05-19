import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokerspot_user_app/apps/global/constants/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_by_game_type.g.dart';
part 'filter_by_game_type.freezed.dart';

@freezed
class FilterByGameTypeModel with _$FilterByGameTypeModel {
  factory FilterByGameTypeModel({
    @Default(GameType.all) GameType gameType,
  }) = _FilterByGameTypeModel;

  FilterByGameTypeModel._();
}

@riverpod
class FilterByGameType extends _$FilterByGameType {
  @override
  FilterByGameTypeModel build() {
    return FilterByGameTypeModel(gameType: GameType.all);
  }

  void setAll() {
    state = state.copyWith(gameType: GameType.all);
    ref.keepAlive();
  }

  void setDaily() {
    state = state.copyWith(gameType: GameType.daily);
    ref.keepAlive();
  }

  void setSeed() {
    state = state.copyWith(gameType: GameType.seed);
    ref.keepAlive();
  }

  void setGTD() {
    state = state.copyWith(gameType: GameType.gtd);
    ref.keepAlive();
  }
}
