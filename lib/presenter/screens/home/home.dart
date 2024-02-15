import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';
import 'package:texno/presenter/components/brand.dart';
import 'package:texno/presenter/components/category.dart';
import 'package:texno/presenter/components/search.dart';
import 'package:texno/presenter/mainpage/langing_provider.dart';
import 'package:texno/presenter/screens/details/bloc/details_bloc.dart';
import 'package:texno/presenter/screens/details/details.dart';
import 'package:texno/presenter/screens/home/bloc/home_bloc.dart';
import 'package:texno/presenter/screens/selected/bloc/selected_bloc.dart';
import 'package:texno/presenter/screens/selected/selected.dart';
import 'package:texno/utils/item_holder.dart';

import '../../../utils/category_holder.dart';
import '../../components/product.dart';
import '../../components/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = HomeBloc();

  @override
  void initState() {
    _bloc.add(GetAllCategoriesEvent());
    _bloc.add(GetSlidersEvent());
    _bloc.add(GetAllSpecialEvent());
    _bloc.add(GetAllTopProductsEvent());
    _bloc.add(GetAllBrandsEvent());
    _bloc.add(GetALlNEwProductEvent());
    _bloc.add(GetAllFavouriteEvent());
    _bloc.add(GetAllSavedHomeEvent());
    super.initState();
  }

  List<CategoryHolder> categoryHolder = [];
  List<ItemHolder> itemHolder = [];
  List<ItemHolder> newProductHolder = [];
  List<String> sliderData = [];
  List<String> brandData = [];
  List<String> favouritesName = [];
  List<String> savedProducts = [];

  var logger = Logger();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context.watch<BottomProvider>().count.toString();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: const Color(0xFFFFC300),
        shadowColor: Theme.of(context).colorScheme.shadow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/img.png",
              width: 170,
              height: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            InputSearch(context, _controller)
          ],
        ),
        scrolledUnderElevation: 1.0,
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
          if (state is GetAllSpecialState) {
            state.data.data?.data?.forEach((element) {
              categoryHolder.add(CategoryHolder(element?.title ?? '',
                  element?.slug ?? '', element?.image ?? ''));
            });
          }
          if (state is GetSliderState) {
            state.data.data?.data?.forEach((element) {
              sliderData.add(element.imageMobileWeb ?? '');
            });
          }
          if (state is GetProductsState) {
            state.data.data?.data?.forEach((element) {
              itemHolder.add(ItemHolder(
                element.id.toString(),
                  element.name ?? '',
                  element.image ?? '',
                  element.axiomMonthlyPrice ?? '',
                  element.salePrice.toString(),
                  "0",
                  favouritesName.contains(element.name),
                  false));
            });
          }
          if (state is GetAllBrandsState) {
            state.data.data?.data?.forEach((element) {
              brandData.add(element.image.toString());
            });
          }
          if (state is GetALlNEwProductState) {
            state.data.data?.data?.forEach((element) {
              newProductHolder.add(ItemHolder(
                element.id.toString(),
                element.name ?? "",
                element.image ?? "",
                element.axiomMonthlyPrice ?? "",
                element.salePrice.toString(),
                "0",
                favouritesName.contains(element.name),
                false,
              ));
            });
          }
          if (state is GetAllFavouriteState) {
            for (var element in state.data) {
              favouritesName.add(element.name);
            }
          }
          if (state is GetAllSavedHomeState) {
            for (var o in state.data) {
              savedProducts.add(o.name);
            }
          }
        }, builder: (context, state) {
          if (categoryHolder.isNotEmpty &&
              itemHolder.isNotEmpty &&
              sliderData.isNotEmpty &&
              newProductHolder.isNotEmpty &&
              brandData.isNotEmpty) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ImageSliderDemo(imgList: sliderData),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandData.length,
                        itemBuilder: (context, index) {
                          if (index == 6) {
                            return const SizedBox();
                          } else if (index == categoryHolder.length - 1) {
                            return Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: brandItem(brandData[index]));
                          } else if (index == 0) {
                            return Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: brandItem(brandData[index]));
                          } else {
                            return brandItem(brandData[index]);
                          }
                        }),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18)),
                        InkWell(
                          onTap: () {
                            context.read<BottomProvider>().changeIndex(1);
                          },
                          child: Row(
                            children: [
                              Text("All",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 14)),
                              const SizedBox(width: 2),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryHolder.length,
                        itemBuilder: (context, index) {
                          if (index == categoryHolder.length - 1) {
                            return Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    SelectedBloc(),
                                                child: SelectedScreen(
                                                    categoryHolder[index].slug),
                                              )),
                                    );
                                  },
                                  child: categoryItem(
                                      categoryHolder[index].name,
                                      categoryHolder[index].image),
                                ));
                          } else if (index == 0) {
                            return Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    SelectedBloc(),
                                                child: SelectedScreen(
                                                    categoryHolder[index].slug),
                                              )),
                                    );
                                    // MaterialPageRoute(builder: (context) => SelectedScreen(categoryHolder[index].slug));
                                  },
                                  child: categoryItem(
                                      categoryHolder[index].name,
                                      categoryHolder[index].image),
                                ));
                          } else {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                            create: (context) => SelectedBloc(),
                                            child: SelectedScreen(
                                                categoryHolder[index].slug),
                                          )),
                                );
                              },
                              child: categoryItem(categoryHolder[index].name,
                                  categoryHolder[index].image),
                            );
                          }
                        }),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New Products",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: newProductHolder.length,
                        itemBuilder: (context, index) {
                          if (index == newProductHolder.length - 1) {
                            return Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    DetailsBloc(),
                                                child: ProductDetails(
                                                    id: newProductHolder[index],),
                                              )),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: productItem(
                                        newProductHolder[index].name,
                                        newProductHolder[index].image,
                                        newProductHolder[index].value,
                                        newProductHolder[index].price,
                                        favouritesName.contains(
                                            newProductHolder[index].name),
                                        () {
                                          setState(() {
                                            _bloc.add(LikeProductEvent(
                                                newProductHolder[index]));
                                            favouritesName.clear();
                                            _bloc.add(GetAllFavouriteEvent());
                                          });
                                        },
                                        savedProducts.contains(
                                            newProductHolder[index].name),
                                        () {
                                          // setState(() {
                                          _bloc.add(SaveProductEvent(
                                              newProductHolder[index]));
                                          if(savedProducts.contains(newProductHolder[index].name)){
                                            context
                                              .read<BottomProvider>()
                                                .decrement();
                                          } else {
                                            context
                                                .read<BottomProvider>()
                                              .increment();
                                          }
                                          savedProducts.clear();
                                          _bloc.add(GetAllSavedHomeEvent());
                                          // });
                                        }),
                                  ),
                                ));
                          } else if (index == 0) {
                            return Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BlocProvider(
                                                create: (context) =>
                                                    DetailsBloc(),
                                                child: ProductDetails(
                                                    id: newProductHolder[index]),
                                              )),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: productItem(
                                        newProductHolder[index].name,
                                        newProductHolder[index].image,
                                        newProductHolder[index].value,
                                        newProductHolder[index].price,
                                        favouritesName.contains(
                                            newProductHolder[index].name),
                                        () {
                                          setState(() {
                                            _bloc.add(LikeProductEvent(
                                                newProductHolder[index]));
                                            favouritesName.clear();
                                            _bloc.add(GetAllFavouriteEvent());
                                          });
                                        },
                                        savedProducts.contains(
                                            newProductHolder[index].name),
                                        () {
                                          // setState(() {
                                          _bloc.add(SaveProductEvent(
                                              newProductHolder[index]));
                                          if(savedProducts.contains(newProductHolder[index].name)){
                                            context
                                                .read<BottomProvider>()
                                                .decrement();
                                          } else {
                                            context
                                                .read<BottomProvider>()
                                                .increment();
                                          }
                                          savedProducts.clear();
                                          _bloc.add(GetAllSavedHomeEvent());
                                          // });
                                        }),
                                  ),
                                ));
                          } else {
                            return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                              create: (context) =>
                                                  DetailsBloc(),
                                              child: ProductDetails(
                                                  id:newProductHolder[index]),
                                            )),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: productItem(
                                      newProductHolder[index].name,
                                      newProductHolder[index].image,
                                      newProductHolder[index].value,
                                      newProductHolder[index].price,
                                      favouritesName.contains(
                                          newProductHolder[index].name),
                                      () {
                                        setState(() {
                                          _bloc.add(LikeProductEvent(
                                              newProductHolder[index]));
                                          favouritesName.clear();
                                          _bloc.add(GetAllFavouriteEvent());
                                        });
                                      },
                                      savedProducts.contains(
                                          newProductHolder[index].name),
                                      () {
                                        // setState(() {
                                        _bloc.add(SaveProductEvent(
                                            newProductHolder[index]));
                                        if(savedProducts.contains(newProductHolder[index].name)){
                                          context
                                              .read<BottomProvider>()
                                              .decrement();
                                        } else {
                                          context
                                              .read<BottomProvider>()
                                              .increment();
                                        }
                                        savedProducts.clear();
                                        _bloc.add(GetAllSavedHomeEvent());
                                        // });
                                      }),
                                ));
                          }
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(color: Colors.black12),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Top Products",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18)),
                        InkWell(
                          onTap: () {
                            context.read<BottomProvider>().changeIndex(1);
                          },
                          child: Row(
                            children: [
                              Text("All",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 14)),
                              const SizedBox(width: 2),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 1.35),
                        ),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: itemHolder.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                          create: (context) => DetailsBloc(),
                                          child: ProductDetails(
                                              id: itemHolder[index]),
                                        )),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: productItem(
                                  itemHolder[index].name,
                                  itemHolder[index].image,
                                  itemHolder[index].value,
                                  itemHolder[index].price,
                                  favouritesName
                                      .contains(itemHolder[index].name), () {
                                setState(() {
                                  _bloc
                                      .add(LikeProductEvent(itemHolder[index]));
                                  favouritesName.clear();
                                  _bloc.add(GetAllFavouriteEvent());
                                });
                              }, savedProducts.contains(itemHolder[index].name),
                                  () {
                                    _bloc.add(SaveProductEvent(
                                        itemHolder[index]));
                                    if(savedProducts.contains(itemHolder[index].name)){
                                      context
                                          .read<BottomProvider>()
                                          .decrement();
                                    } else {
                                      context
                                          .read<BottomProvider>()
                                          .increment();
                                    }
                                    savedProducts.clear();
                                    _bloc.add(GetAllSavedHomeEvent());
                                  }),
                            ),
                          );
                        }),
                  ),
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
