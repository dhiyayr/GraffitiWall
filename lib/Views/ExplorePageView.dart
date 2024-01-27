import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class ExplorePageView extends StatefulWidget {
  @override
  _ExplorePageViewState createState() => _ExplorePageViewState();
}

class _ExplorePageViewState extends State<ExplorePageView> {
  late MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: createMap(),
    );
  }

  Widget createMap() {
    return MapboxMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(
        target: LatLng(0.0, 0.0), // Center of the map
        zoom: 2.0, // Initial zoom level
      ),
      // Additional customization and settings for the map
    );
  }
}
