import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  late GoogleMapController mapController;
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        mapToolbarEnabled: false,
        liteModeEnabled: true,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.lat, widget.lng),
          zoom: 16,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('Marker'),
            position: LatLng(widget.lat, widget.lng),
            draggable: false,
            icon: markerIcon,
          ),
        },
      ),
    );
  }
}
