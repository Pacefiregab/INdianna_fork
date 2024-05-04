import 'package:Indiana/app/widgets/shared/navbar.dart';
import 'package:Indiana/app/widgets/topnav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav(),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(46.526068030015765, 2.4714261461279303),
          initialZoom: 16,
          minZoom: 0,
          maxZoom: 19,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName:
                'net.tlserver6y.flutter_map_location_marker.example',
            maxZoom: 19,
          ),
          CurrentLocationLayer(
            alignPositionOnUpdate: AlignOnUpdate.once,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  //Make a function that returns a list of markers from a get request to an api with the current position from CurrentLocationLayer as a parameter

  List<Marker> getMarkers() {
    return [
      Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(46.526068030015765, 2.4714261461279303),
        builder: (ctx) => Container(
          child: Icon(
            Icons.location_on,
            color: Colors.red,
            size: 50.0,
          ),
        ),
      ),
    ];
  }
}
