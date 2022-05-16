import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mirun extends StatefulWidget {
  const mirun({Key? key}) : super(key: key);

  @override
  State<mirun> createState() => _mirunState();
}

class _mirunState extends State<mirun> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-7.8032076, 110.3573354);

  @override
  void initState() {
    _markers.add(Marker(
        markerId: MarkerId('-7.8032076, 110.3573354'),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFECC80A),
        centerTitle: true,
        title: Text("MiRun", style: TextStyle(color: Colors.black)),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: _currentPosition, zoom: 14),
        markers: _markers,
      ),
    );
  }
}
