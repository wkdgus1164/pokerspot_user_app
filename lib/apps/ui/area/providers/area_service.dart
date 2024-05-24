import 'package:logger/logger.dart';
import 'package:pokerspot_user_app/apps/infra/api/address/area_api.dart';
import 'package:pokerspot_user_app/apps/infra/api/address/dto/area_dto.dart';
import 'package:pokerspot_user_app/apps/ui/area/models/area.dart';
import 'package:pokerspot_user_app/apps/ui/area/providers/area_data.dart' as a;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'area_service.g.dart';

@riverpod
class AreaService extends _$AreaService {
  @override
  Future<List<AreaModel>> build() async {
    return _fetchCategory();
  }

  Future<List<AreaModel>> _fetchCategory() async {
    final cityCode = ref.read(a.areaProvider).regcodePattern;
    final res = await ref.read(areaApiProvider).fetchArea(cityCode);
    Logger().i('res : $res');
    return res.regcodes.toModels();
  }
}

extension _AreaListModelMapperExtension on List<AreaDto> {
  List<AreaModel> toModels() {
    return map((e) => e.toModel()).toList();
  }
}

extension _AreaModelMapperExtension on AreaDto {
  AreaModel toModel() {
    return AreaModel(
      code: code,
      name: name,
    );
  }
}
