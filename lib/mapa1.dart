import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1 ({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP DE MAPS'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(40.6643, -73.9385), zoom: 4),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(40.6643,-73.9385),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}