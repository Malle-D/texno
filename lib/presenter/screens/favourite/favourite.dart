import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texno/presenter/screens/favourite/bloc/favourite_bloc.dart';

import '../../../utils/item_holder.dart';
import '../../components/basket.dart';
import '../../components/favourite.dart';
import '../../mainpage/landing_page.dart';
import '../../mainpage/langing_provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  final _bloc = FavouriteBloc();

  @override
  void initState() {
    _bloc.add(GetFavouritesEvent());
    super.initState();
  }

  List<ItemHolder> favouriteItems = [];

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
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Избранное",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18),
            )
          ],
        ),
        scrolledUnderElevation: 1.0,
      ),
      body: BlocProvider.value(
        value: _bloc,
        child:
        BlocConsumer<FavouriteBloc, FavouriteState>(listener: (context, state) {
          if (state is GetFavouritesState) {
            for (var element in state.items) {
              favouriteItems.add(element);
            }
          }
        }, builder: (context, state) {
          if (favouriteItems.isNotEmpty) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: favouriteItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: favoriteItem(
                                favouriteItems[index].name,
                                favouriteItems[index].image,
                                favouriteItems[index].value,
                                favouriteItems[index].price,
                                favouriteItems[index].favourite,
                                    () {
                                  setState(() {
                                    favouriteItems[index].favourite = !favouriteItems[index].favourite;
                                  });
                                },
                                    () {
                                      context.read<BottomProvider>().changeIndex(2);
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LandingPage(currentPage: 2)),
                                      );
                                }),
                          );
                        }),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/handbox.png",
                    width: 72,
                    height: 72,
                    color: Colors.black38,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Список желайний пуст',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 350,
                    child: Text(
                      'Добавляйте понравившиеся товары в избранное, чтобы посмотреть или купить их позже',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      context.read<BottomProvider>().changeIndex(1);
                    },
                    child: Container(
                      width: 270,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFffc300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Посмотреть Товары',
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
                  )
                ],
              ),
            );
          }
        }),
      ),
    );
  }

}
