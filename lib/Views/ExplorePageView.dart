import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlong;
import 'package:url_launcher/url_launcher.dart';
import 'package:graffitiwall/main.dart';

class ExplorePageView extends StatefulWidget {
  @override
  _ExplorePageViewState createState() => _ExplorePageViewState();
}

class _ExplorePageViewState extends State<ExplorePageView> {
  late List<Marker> _markers;

  @override
  void initState() {
    super.initState();
    _markers = [
      Marker(
        width: 80.0,
        height: 80.0,
        point: latlong.LatLng(39.8283, -98.5795), // Example coordinates
        // Adjusted to a general widget
        child: Icon(Icons.location_pin, color: Colors.red),
      ),
      // Add more markers as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latlong.LatLng(39.8283, -98.5795), // Initial center of the map
        zoom: 3, // Initial zoom level
      ),
      // Adjust the way layers are added
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: _markers,
        ),
      ],
    );
  }
}
