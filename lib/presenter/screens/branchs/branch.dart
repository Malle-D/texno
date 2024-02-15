import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:texno/presenter/screens/branchs/bloc/branch_bloc.dart';
import 'package:texno/presenter/screens/map/map_screen.dart';
import 'package:texno/presenter/screens/map/map_screen_all.dart';
import 'package:texno/presenter/screens/map/map_screen_user.dart';
import '../../../data/model/location/app_lat_long.dart';
import '../../../data/model/location/location_service.dart';
import '../../../utils/location_holder.dart';
import '../../components/location_item.dart';
import '../../components/search.dart';

class BranchScreen extends StatefulWidget {
  const BranchScreen({super.key});

  @override
  State<BranchScreen> createState() => _BranchScreenState();
}

class _BranchScreenState extends State<BranchScreen> {
  final _bloc = BranchBloc();
  final List<LocationHolder> locationHolder = [];
  final _controller = TextEditingController();

  Future<void> _initPermission() async {
    if (!await LocationService().checkPermission()) {
      await LocationService().requestPermission();
    }
    await _fetchCurrentLocation();
  }
  Future<AppLatLong> _fetchCurrentLocation() async {
    AppLatLong location;
    const defLocation = DefaultLocation();
    try {
      location = await LocationService().getCurrentLocation();
    } catch (_) {
      location = defLocation;
    }
    return location;
  }

  @override
  void initState() {
    _bloc.add(GetBranchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFFFFC300),
        shadowColor: Theme
            .of(context)
            .colorScheme
            .shadow,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Магазины",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapScreenAll(locationHolder)));
                },
                child: Image.asset("assets/images/map.png", width: 28))
          ],
        ),
        scrolledUnderElevation: 1.0,
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<BranchBloc, BranchState>(
            listener: (context, state) {
              if (state is GetBranchState) {
                state.items.data?.data?.forEach((element) {
                  element.openedStores?.forEach((item) {
                    locationHolder.add(LocationHolder(
                        element.name ?? "",
                        item.name ?? "",
                        item.address ?? "",
                        item.long ?? "",
                        item.lat ?? "",
                        item.workTime ?? ""));
                  });
                });
              }
            }, builder: (context, state) {
          if (locationHolder.isNotEmpty) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60.0),
                    child: GroupedListView<dynamic, String>(
                      elements: locationHolder,
                      groupBy: (element) => element.location,
                      groupComparator: (value1, value2) =>
                          value2.compareTo(value1),
                      itemComparator: (item1, item2) =>
                          item1.location.compareTo(item2.location),
                      order: GroupedListOrder.DESC,
                      useStickyGroupSeparators: true,
                      groupSeparatorBuilder: (String value) =>
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              value,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                      itemBuilder: (c, element) {
                        return locationItem(
                            element.address, element.time, () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MapScreen(element.address, element.lat, element.long)));
                        });
                      },
                    ),
                  ),
                  InputSearch(context, _controller),
                  Align(
                    alignment: const Alignment(0, 1),
                    child: InkWell(
                      onTap: () async {
                        _initPermission();
                        var location = await _fetchCurrentLocation();
                        _fetchCurrentLocation().then((value) => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MapScreenUser(locationHolder, location.lat.toString(), location.long.toString()))));
                      },
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        decoration: ShapeDecoration(
                          color: const Color(0xffe3e3e3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Показать ближайший',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Center(
              child: LoadingAnimationWidget.twistingDots(
                leftDotColor: const Color(0xff000000),
                rightDotColor: const Color(0xffffc300),
                size: 48,
              ),
            );
          }
        }),
      ),
    );
  }
}
