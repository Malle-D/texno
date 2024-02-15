import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texno/presenter/mainpage/langing_provider.dart';
import 'package:texno/presenter/screens/basket/basket.dart';
import 'package:texno/presenter/screens/catalog/catalog.dart';
import 'package:texno/presenter/screens/home/home.dart';
import 'package:texno/presenter/screens/orders/orders.dart';
import 'package:texno/presenter/screens/profile/profile.dart';

class LandingPage extends StatefulWidget {
  final int currentPage;

  LandingPage({required this.currentPage, super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.manage_search_outlined),
      label: 'Catalog',
    ),
    BottomNavigationBarItem(
      icon: Badge(
        backgroundColor: Color(0xffffc300),
        label: Text(
          '2',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
        child: const Icon(Icons.shopping_basket_outlined),
      ),
      label: 'Basket',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.card_travel_outlined),
      label: 'Orders',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.perm_identity_outlined),
      label: 'Profile',
    )
  ];

  Widget currentScreen = const HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();

  List<Widget> bottomNavScreen = <Widget>[
    const HomeScreen(),
    const CatalogScreen(),
    const BasketScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];

  int currentTabIndex = 2;

  // String count = "";

  @override
  void initState() {
    currentTabIndex = widget.currentPage;

    if(currentTabIndex == 4){
      currentScreen = const ProfileScreen();
    } else if(currentTabIndex == 3){
      currentScreen = const OrdersScreen();
    } else if (currentTabIndex == 2) {
      currentScreen = const BasketScreen();
    } else if (currentTabIndex == 1) {
      currentScreen = const CatalogScreen();
    } else {
      currentScreen = const HomeScreen();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // context.watch<BottomProvider>().getCount();
    // setState(() {
    // });
    // context.watch<BottomProvider>().setCount();
    currentTabIndex = context.watch<BottomProvider>().index;
    currentScreen = bottomNavScreen[currentTabIndex];

    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<BottomProvider>().index,
        onTap: (int index) {
          setState(() {
            currentScreen = bottomNavScreen[index];
            context.read<BottomProvider>().changeIndex(index);
            // currentTabIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Главная"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.manage_search_outlined), label: "Каталог"),
          BottomNavigationBarItem(
              icon: Badge(
                  label: Text(context.watch<BottomProvider>().count.toString(),
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w700)),
                  backgroundColor: const Color(0xffffc300),
                  child: const Icon(
                    Icons.shopping_basket_outlined,
                  )),
              label: "Корзина"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined), label: "Заказы"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined), label: "Профиль"),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11,
        selectedFontSize: 11,
      ),
    );
  }
}
