import 'package:flutter/material.dart';
import 'package:google_map/view/google_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: GoogleMapView());
  }
}
