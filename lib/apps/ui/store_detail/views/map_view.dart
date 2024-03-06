import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class StoreDetailMapView extends StatefulHookConsumerWidget {
  const StoreDetailMapView({
    super.key,
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StoreDetailMapViewState();
}

class _StoreDetailMapViewState extends ConsumerState<StoreDetailMapView> {
  late KakaoMapController mapController;
  late LatLng center = LatLng(widget.lng, widget.lat);
  Set<Marker> markers = {};
  late Marker marker;

  @override
  void initState() {
    markers.add(Marker(markerId: 'markerId', latLng: center));

    marker = Marker(
      markerId: 'markerId',
      latLng: center,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: KakaoMap(
        onMapCreated: ((controller) async {
          mapController = controller;
          markers.add(marker);

          // mapController.setDraggable(false);

          setState(() {});
        }),
        markers: markers.toList(),
        center: center,
        currentLevel: 3,
      ),
    );
  }
}
