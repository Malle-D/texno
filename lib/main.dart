import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:texno/data/source/preference/my_preference.dart';
import 'package:texno/di/di.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texno/presenter/mainpage/langing_provider.dart';
import 'package:texno/presenter/screens/splash/splash.dart';
import 'package:texno/utils/item_holder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(ItemHolderAdapter());
  await Hive.openBox('Orders');
  await Hive.openBox('Texnomart');
  runApp(const MyApp());
  MyPreference.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: BottomProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // initialRoute: '/',
        // routes: {
          // '/': (BuildContext context) => const SplashScreen(),
          // 'landing' : (BuildContext context) => LandingPage(currentPage: 0)
          // 'home': (BuildContext context) => BlocProvider(
          //     create: (BuildContext context) => HomeBloc(),
          //     child: const HomeScreen()),
          // 'landing': (BuildContext context) => BlocProvider(
          //     create: (BuildContext context) => LandingPageBloc(),
          //     child: LandingPage(currentPage: 0)),
          // 'catalog': (BuildContext context) => BlocProvider(
          //     create: (BuildContext context) => CatalogBloc(),
          //     child: const CatalogScreen()),
          // 'selected': (BuildContext context) => BlocProvider(
          //     create: (BuildContext context) => SelectedBloc(),
          //     child: SelectedScreen('')),
          // 'basket': (BuildContext context) => BlocProvider(
          //     create: (BuildContext context) => BasketBloc(),
          //     child: const BasketScreen()),
        // },
        home: const SplashScreen(),
      ),
    );
  }
}
