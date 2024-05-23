import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2 ({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP DE MAPS'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(51.5072, -0.1275), zoom: 4),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=c237161974cb41a282cc836fa067d23d',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(51.5072, -0.1275),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.green),
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