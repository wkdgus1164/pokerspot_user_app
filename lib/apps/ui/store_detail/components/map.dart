import 'package:flutter/material.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';
import 'package:pokerspot_user_app/apps/infra/common/models/store_v2.dart';
import 'package:pokerspot_user_app/apps/ui/store_detail/views/map_view.dart';
import 'package:pokerspot_user_app/common/components/tonal_button.dart';

class StoreDetailMap extends StatelessWidget {
  const StoreDetailMap({
    super.key,
    required this.handleButtonClick,
    required this.model,
  });

  final StoreV2Model model;
  final Function() handleButtonClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              StoreDetailMapView(
                lat: model.lat,
                lng: model.lng,
              ),
              _buildExpandIconButton(),
            ],
          ),
          const SizedBox(height: 16),
          _buildAddressAndCopyButtonRow(context),
        ],
      ),
    );
  }

  Row _buildAddressAndCopyButtonRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "${model.address}\n${model.addressDetail}",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: colorGrey50,
                ),
          ),
        ),
        const SizedBox(width: 16),
        TonalButton(
          onPressed: () => Utils().copyToClipboard(text: model.address),
          child: Text('주소 복사'),
        ),
      ],
    );
  }

  Padding _buildExpandIconButton() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 48,
        height: 48,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: colorGrey95),
          boxShadow: const [
            BoxShadow(
              color: colorGrey90,
              blurRadius: 8,
            ),
          ],
          color: Colors.white,
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: handleButtonClick,
          icon: const Icon(
            Icons.open_in_full_rounded,
            color: colorBrand60,
          ),
        ),
      ),
    );
  }
}
