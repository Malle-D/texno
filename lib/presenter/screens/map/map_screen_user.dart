import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../utils/location_holder.dart';


class MapScreenUser extends StatefulWidget {
  final List<LocationHolder> list;
  final String lat;
  final String long;

  const MapScreenUser(this.list,this.lat, this.long, {super.key});

  @override
  State<MapScreenUser> createState() => _MapScreenUserState(list, lat, long);
}

class _MapScreenUserState extends State<MapScreenUser> {
  final List<LocationHolder> list;
  final String lat;
  final String long;
  final mapControllerCompleter = Completer<YandexMapController>();

  _MapScreenUserState(this.list,this.lat, this.long);

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
    mapObjects.add(PlacemarkMapObject(
        mapId: MapObjectId('user'),
        icon: PlacemarkIcon.single(PlacemarkIconStyle(
            scale: 0.15,
            image: BitmapDescriptor.fromAssetImage('assets/images/btn.jpg'))),
        point: Point(
            latitude: double.parse(lat), longitude: double.parse(long))));
  }

  @override
  void initState() {
    _moveToCurrentLocation(double.parse(lat), double.parse(long));
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
