import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(ImageConfiguration(),
            "assets/images/icons8-natural-user-interface-2-30.png")
        .then((icon) {
      setState(() {
        markerIcon = icon;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(37.422131, -122.084081), zoom: 14),
        markers: {
          Marker(
              markerId: MarkerId("demo"),
              position: LatLng(37.422131, -122.084081),
              draggable: true,
              onDragEnd: (value) {},
              icon: markerIcon),
        },
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class GoogleMapView extends StatefulWidget {
//   const GoogleMapView({super.key});

//   @override
//   State<GoogleMapView> createState() => _GoogleMapViewState();
// }

// class _GoogleMapViewState extends State<GoogleMapView> {
//   static const _initialCameraPosition =
//       CameraPosition(target: LatLng(37.773972, -122.431297), zoom: 11.5);

//   late GoogleMapController _googleMapController;
//   @override
//   void dispose() {
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         myLocationButtonEnabled: false,
//         zoomControlsEnabled: false,
//         initialCameraPosition: _initialCameraPosition,
//         onMapCreated: (controller) => _googleMapController = controller,
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Theme.of(context).primaryColor,
//         foregroundColor: Colors.black,
//         onPressed: () => _googleMapController.animateCamera(
//           CameraUpdate.newCameraPosition(_initialCameraPosition),
//         ),
//         child: const Icon(Icons.center_focus_strong),
//       ),
//     );
//   }
// }








// // import 'package:flutter/material.dart';
// // import 'package:google_map/view/locations.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'src/locations.dart' as locations;
// // import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
// // import 'package:google_map/view/locations.dart';

// // class GoogleMapView extends StatefulWidget {
// //   const GoogleMapView({super.key});

// //   @override
// //   State<GoogleMapView> createState() => _GoogleMapViewState();
// // }

// // class _GoogleMapViewState extends State<GoogleMapView> {
// //   final Map<String, Marker> _markers = {};
// //   Future<void> _onMapCreated(GoogleMapController controller) async {
// //     final googleOffices = await Locations.getGoogleOffices();
// //     setState(() {
// //       _markers.clear();
// //       for (final office in googleOffices.offices) {
// //         final marker = Marker(
// //           markerId: MarkerId(office.name),
// //           position: LatLng(office.lat, office.lng),
// //           infoWindow: InfoWindow(
// //             title: office.name,
// //             snippet: office.address,
// //           ),
// //         );
// //         _markers[office.name] = marker;
// //       }
// //     });
// //   }

// //   GoogleMapController? mapController;

// //   final LatLng _center = const LatLng(45.521563, -122.677433);

// //   void _onMapCreated(GoogleMapController controller) {
// //     mapController = controller;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           "Google Maps Flutter",
// //           style: TextStyle(color: Colors.white),
// //         ),
// //         backgroundColor: Colors.green[700],
// //         centerTitle: true,
// //         elevation: 2,
// //       ),
// //       body: GoogleMap(
// //         onMapCreated: _onMapCreated,
// //         initialCameraPosition: CameraPosition(target: LatLng(0, 0), zoom: 2),
// //         markers: _markers.values.toSet(),
// //       ),
// //     );
// //   }
// // }
