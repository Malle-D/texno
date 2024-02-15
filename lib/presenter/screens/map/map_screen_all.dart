import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../utils/location_holder.dart';


class MapScreenAll extends StatefulWidget {
  final List<LocationHolder> list;

  const MapScreenAll(this.list, {super.key});

  @override
  State<MapScreenAll> createState() => _MapScreenAllState(list);
}

class _MapScreenAllState extends State<MapScreenAll> {
  final List<LocationHolder> list;
  final mapControllerCompleter = Completer<YandexMapController>();

  _MapScreenAllState(this.list);

  Future<void> _moveToCurrentLocation(double lat, double lon) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: lat,
            longitude: lon,
          ),
          zoom: 5,
        ),
      ),
    );
  }

  final List<MapObject> mapObjects = [];

  void addToList() {
    for (var o in list) {
      mapObjects.add(PlacemarkMapObject(
          mapId: MapObjectId('${o.name}'),
          icon: PlacemarkIcon.single(PlacemarkIconStyle(
              scale: 1,
              image: BitmapDescriptor.fromAssetImage('assets/images/ic.png'))),
          point: Point(
              latitude: double.parse(o.lat), longitude: double.parse(o.long))));
    }
  }

  @override
  void initState() {
    _moveToCurrentLocation(41.311081, 65.240562);
    addToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(mapObjects.length);
    return Scaffold(
        body: YandexMap(
            onMapCreated: (controller) {
              mapControllerCompleter.complete(controller);
            },
            mapObjects: mapObjects,
            zoomGesturesEnabled: true));
  }
}
