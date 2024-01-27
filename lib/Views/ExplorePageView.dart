import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


/*
class ExplorePageView extends StatefulWidget {
  @override
  _ExplorePageViewState createState() => _ExplorePageViewState();
}

class _ExplorePageViewState extends State<ExplorePageView> {
  late MapboxMapController mapController;

  // Use dotenv to get the MAPBOX_ACCESS_TOKEN
  final String mapboxAccessToken = dotenv.env['MAPBOX_DOWNLOADS_TOKEN'] ?? '';


  @override
  void initState() {
    super.initState();
    // If needed, initialize your token here
  }

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
    // Add additional initialization if necessary, like setting the style
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        accessToken: mapboxAccessToken, // Pass the access token here
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(0.0, 0.0), // Starting point of the map
          zoom: 2.0, // Zoom level
        ),
        // Add more customization to your map below
      ),
    );
  }
}*/

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(
      initialCenter: LatLng(51.509364, -0.128928),
      initialZoom: 9.2,
    ),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'com.example.app',
      ),
      RichAttributionWidget(
        attributions: [
          TextSourceAttribution(
            'OpenStreetMap contributors',
            onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
          ),
        ],
      ),
    ],
  );
}
