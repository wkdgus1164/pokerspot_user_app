import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';
import 'package:pokerspot_user_app/apps/global/utils/utils.dart';

class StoreMapPageArguments {
  String name;
  String address;
  double lat;
  double lng;

  StoreMapPageArguments({
    required this.name,
    required this.address,
    required this.lat,
    required this.lng,
  });
}

class StoreMapPage extends StatefulHookConsumerWidget {
  const StoreMapPage({super.key, required this.args});

  final StoreMapPageArguments args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StoreMapPageState();
}

class _StoreMapPageState extends ConsumerState<StoreMapPage> {
  StoreMapPageArguments get _args => widget.args;

  late GoogleMapController mapController;
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    super.initState();
    _loadMarkerIcon();
  }

  Future<void> _loadMarkerIcon() async {
    final byteData = await rootBundle.load(Assets.marker.path);
    final bytes = byteData.buffer.asUint8List();
    final bitmapDescriptor = BitmapDescriptor.fromBytes(bytes);
    setState(() {
      markerIcon = bitmapDescriptor;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_args.name),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: true,
            liteModeEnabled: false,
            myLocationEnabled: true,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(_args.lat, _args.lng),
              zoom: 16,
            ),
            markers: {
              Marker(
                markerId: const MarkerId('Marker'),
                position: LatLng(_args.lat, _args.lng),
                infoWindow: InfoWindow(
                  title: _args.name,
                  snippet: _args.address,
                ),
                icon: markerIcon,
              ),
            },
          ),
          Container(
            padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
            decoration: const BoxDecoration(
              color: colorGrey100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 20,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _args.address,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: colorGrey30,
                        ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () => Utils().copyToClipboard(text: _args.address),
                  icon: const Icon(
                    Icons.copy_rounded,
                    color: colorGrey80,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
