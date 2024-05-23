import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3 ({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP DE MAPS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(30.0446,  31.2456), zoom: 4),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=c237161974cb41a282cc836fa067d23d',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(30.0446, 31.2456),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.deepPurple),
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