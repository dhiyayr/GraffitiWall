import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
import 'package:latlong2/latlong.dart' as latlong;
import 'package:url_launcher/url_launcher.dart';


class ExplorePageView extends StatefulWidget {
  @override
  _ExplorePageViewState createState() => _ExplorePageViewState();
}

class _ExplorePageViewState extends State<ExplorePageView> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: latlong.LatLng(39.8283, -98.5795), // Near the geographic center of the U.S.
        initialZoom: 3, // A lower zoom level to show more of the map
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
}
