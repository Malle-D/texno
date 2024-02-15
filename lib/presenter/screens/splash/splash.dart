import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:texno/presenter/mainpage/landing_page.dart';
import 'package:texno/presenter/mainpage/langing_provider.dart';
import 'package:texno/utils/item_holder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //  Future<void> openBox() async {
  //   try {
  //     final dir = await getApplicationDocumentsDirectory();
  //      Hive.init(dir.path);
  //     Hive.registerAdapter(ItemHolderAdapter());
  //     await Hive.openBox('Texnomart');
  //     //return true;
  //   } catch (e) {
  //     print('Error opening Hive Box: $e');
  //   //  return false;
  //   }
  // }

  @override
  void initState() {
    // openBox();
    // init().then((value) => {openMainScreen()});
    openMainScreen();
    super.initState();
  }

  Future<void> openMainScreen() async {
    await Future.delayed(const Duration(seconds: 2), () {

      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => LandingPage(currentPage: 0)),
      // );

      // Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder: (context){
      //       return ChangeNotifierProvider.value(value: BottomProvider(), child: LandingPage(currentPage: 0));
      //     }
      // ));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChangeNotifierProvider(
          create: (BuildContext context) => BottomProvider(),
          child: LandingPage(currentPage: 0),
        )),
      );


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffc300),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(58.0),
                child: Image.asset("assets/images/img.png"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: LoadingAnimationWidget.dotsTriangle(
                  color: const Color(0xffffffff),
                  size: 48,
                ),
              ),
            ),
          ],
        ));
  }
}
