import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

// import '../../data/model/app_lat_long.dart';
// import '../../data/model/location_service.dart';

class MapScreen extends StatefulWidget {
  final String name;
  final String lat;
  final String long;

  const MapScreen(this.name, this.lat, this.long, {super.key});

  @override
  State<MapScreen> createState() => _MapScreenState(name, lat, long);
}

class _MapScreenState extends State<MapScreen> {
  final String name;
  final String lat;
  final String long;
  final mapControllerCompleter = Completer<YandexMapController>();

  _MapScreenState(this.name, this.lat, this.long);

  Future<void> _moveToCurrentLocation(double lat, double lon) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: lat,
            longitude: lon,
          ),
          zoom: 15,
        ),
      ),
    );
  }

  @override
  void initState() {
    _moveToCurrentLocation(double.parse(lat), double.parse(long));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xFFFFC300),
          shadowColor: Theme.of(context).colorScheme.shadow,
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Магазины",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 20),
              )
            ],
          ),
          scrolledUnderElevation: 1.0,
        ),
        body: Stack(
          children: [
            YandexMap(
                onMapCreated: (controller) {
                  mapControllerCompleter.complete(controller);
                },
                mapObjects: [
                  PlacemarkMapObject(
                      mapId: const MapObjectId('150'),
                      icon: PlacemarkIcon.single(PlacemarkIconStyle(
                          scale: 1.5,
                          image: BitmapDescriptor.fromAssetImage(
                              'assets/images/ic.png'))),
                      point: Point(
                          latitude: double.parse(lat),
                          longitude: double.parse(long)))
                ],
                zoomGesturesEnabled: true),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    color: Colors.white
                ),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Пн-Вс(10:00-20:00)',
                        style: TextStyle(fontSize: 14.0, color: Colors.black54),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        '+998 93 966 99 60',
                        style: TextStyle(fontSize: 14.0, color: Colors.black54),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: const Color(0xffffc300), width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.swap_calls),
                              const SizedBox(width: 8.0),
                              Text(
                                'Маршрут',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}