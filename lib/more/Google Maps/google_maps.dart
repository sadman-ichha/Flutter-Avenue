import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapsFlutter extends StatefulWidget {
  const GoogleMapsFlutter({super.key});
  @override
  State<GoogleMapsFlutter> createState() => _GoogleMapsFlutterState();
}

class _GoogleMapsFlutterState extends State<GoogleMapsFlutter> {
  //const GoogleMapsFlutter({super.key});

  Location location = Location();
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    setState(() {});
    print(_locationData);
  }

  final Set<Marker> markers = {};

  addMarker() {
    markers.add(
      Marker(
        markerId: const MarkerId("Current Loacation"),
        position: LatLng(
          _locationData!.latitude!.toDouble(),
          _locationData!.longitude!.toDouble(),
        ),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: const InfoWindow(title: "Sadman Ichha"),
      ),
    );
    setState(() {});
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: _locationData != null
          ? GoogleMap(
              mapType: MapType.normal,
              myLocationButtonEnabled: false,
              markers: markers,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  _locationData!.latitude!.toDouble(),
                  _locationData!.longitude!.toDouble(),
                ),
                zoom: 15,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                addMarker();
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
