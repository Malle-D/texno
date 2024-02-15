import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:texno/presenter/mainpage/landing_page.dart';
import 'package:texno/presenter/screens/details/bloc/details_bloc.dart';

import '../../../utils/details_item.dart';
import '../../../utils/item_holder.dart';
import '../../mainpage/langing_provider.dart';
import '../branchs/bloc/branch_bloc.dart';
import '../branchs/branch.dart';

class ProductDetails extends StatefulWidget {
  final ItemHolder id;

  const ProductDetails({super.key, required this.id});

  @override
  State<ProductDetails> createState() => _ProductDetailsState(id);
}

class _ProductDetailsState extends State<ProductDetails> {
  final ItemHolder id;

  _ProductDetailsState(this.id);

  final _bloc = DetailsBloc();
  bool check = false;

  List<String> savedProducts = [];
  List<String> favouriteProducts = [];
  DetailsItem item = DetailsItem("id", "name", "image", "value", "price",
      "code", "desc", false, false, []);

  @override
  void initState() {
    _bloc.add(GetItemById(id.id));
    _bloc.add(GetAllSavedEvent());
    _bloc.add(GetAllFavouriteDetailsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<BottomProvider>().setCount();
        return true;
      },
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            automaticallyImplyLeading: true,
            backgroundColor: const Color(0xFFFFC300),
            shadowColor: Theme.of(context).colorScheme.shadow,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            title: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/img.png",
                  width: 170,
                  height: 30,
                  fit: BoxFit.cover,
                ),
                const Spacer(),
              ],
            ),
            scrolledUnderElevation: 1.0,
          ),
          body: BlocProvider.value(
            value: _bloc,
            child: BlocConsumer<DetailsBloc, DetailsState>(
              listener: (context, state) {
                if (state is GetAllFavouriteDetailsState) {
                  for (var o in state.data) {
                    favouriteProducts.add(o.name);
                  }
                  check = favouriteProducts.contains(item.name);
                }
                if (state is GetAllSavedState) {
                  for (var o in state.data) {
                    savedProducts.add(o.name);
                  }
                }
                if (state is GetItemByIdState) {
                  // item = DetailsItem(
                  //     id,
                  //     state.itemById.data?.data?.name ?? "",
                  //     state.itemById.data?.data?.largeImages?.first ?? "",
                  //     state.itemById.data?.data?.monthlyPrice ?? "",
                  //     state.itemById.data?.data?.salePrice.toString() ?? "",
                  //     state.itemById.data?.data?.code ?? "",
                  //     state.itemById.data?.data?.description ?? "",
                  //     false,
                  //     false,
                  //     state.itemById.data?.data?.characters ?? []
                  // );
                  item.id = id.id;
                  item.name = id.name;
                  item.value = id.value;
                  item.price = id.price;
                  item.image = id.image;
                  item.characters = state.itemById.data?.data?.characters ?? [];
                  item.desc = state.itemById.data?.data?.description ?? "";
                }
              },
              builder: (context, state) {
                if (item.name == "name") {
                  return Center(
                    child: LoadingAnimationWidget.twistingDots(
                      leftDotColor: const Color(0xff000000),
                      rightDotColor: const Color(0xffffc300),
                      size: 48,
                    ),
                  );
                } else if (savedProducts.contains(item.name)) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, top: 14, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                item.image,
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.width - 120,
                                height: 220,
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Доступно",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.greenAccent,
                                      fontSize: 14)),
                              Text(item.code,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 12)),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(item.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                          const SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("${item.price} cум",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600, fontSize: 30)),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item.favourite = !item.favourite;
                                  });
                                },
                                child: Icon(Icons.favorite,
                                    color: check ? Colors.red : Colors.grey,
                                    size: 36),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0x15000000),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Рассрочка:",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          fontSize: 14)),
                                  Text(item.value,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Отзовы: 9",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 14)),
                              Spacer(),
                              Image.asset("assets/images/stars.png",
                                  fit: BoxFit.cover, width: 100),
                              Icon(Icons.arrow_forward_ios, color: Colors.black38)
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                          create: (context) => BranchBloc(),
                                          child: const BranchScreen())));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Наличие в Магазинах",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              if (item.desc.isNotEmpty) {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 250,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Html(data: item.desc.toString())
                                              // Text(item.desc),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                showToast("У этого предмета нет уписания",
                                    context: context,
                                    animation:
                                    StyledToastAnimation.slideFromTopFade,
                                    reverseAnimation:
                                    StyledToastAnimation.slideToTopFade,
                                    position: StyledToastPosition(
                                        align: Alignment.topCenter, offset: 0.0),
                                    startOffset: Offset(0.0, -3.0),
                                    reverseEndOffset: Offset(0.0, -3.0),
                                    duration: Duration(seconds: 4),
                                    //Animation duration   animDuration * 2 <= duration
                                    animDuration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    reverseCurve: Curves.fastOutSlowIn);
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Описание",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 250,
                                      child: SingleChildScrollView(
                                          child: ListView.builder(
                                              physics: NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: item
                                                  .characters[0].characters?.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12,
                                                          horizontal: 16.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: 200,
                                                            child: Text(
                                                              item.characters[0].characters?[index].name ??"",
                                                              style: GoogleFonts.poppins(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                  fontSize:
                                                                  15),
                                                              overflow: TextOverflow.ellipsis,
                                                            ),
                                                          ),
                                                          Text(
                                                            item.characters[0].characters?[index].value ??"",
                                                            style: GoogleFonts.poppins(
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 15),
                                                            overflow: TextOverflow.ellipsis,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                        color: Colors.black12,
                                                        height: 1)
                                                  ],
                                                );
                                              })),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Характеристики",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              context.read<BottomProvider>().changeIndex(2);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LandingPage(currentPage: 2)),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: const Color(0xffffc300), width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'В корзинe',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                        ],
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, top: 14, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                item.image,
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.width - 120,
                                height: 220,
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Доступно",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.greenAccent,
                                      fontSize: 14)),
                              Text(item.code,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 12)),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(item.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text("${item.price} cум",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600, fontSize: 30)),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item.favourite = !item.favourite;
                                    _bloc.add(GetAllSavedEvent());
                                  });
                                },
                                child: Icon(Icons.favorite,
                                    color: check ? Colors.red : Colors.grey,
                                    size: 36),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0x15000000),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Рассрочка:",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey,
                                          fontSize: 14)),
                                  Text(item.value,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Отзовы: 9",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 14)),
                              Spacer(),
                              Image.asset("assets/images/stars.png",
                                  fit: BoxFit.cover, width: 100),
                              Icon(Icons.arrow_forward_ios, color: Colors.black38)
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                          create: (context) => BranchBloc(),
                                          child: const BranchScreen())));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Наличие в Магазинах",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              if (item.desc.isNotEmpty) {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 250,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Html(data: item.desc.toString())
                                              // Text(item.desc),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                showToast("У этого предмета нет уписания",
                                    context: context,
                                    animation:
                                        StyledToastAnimation.slideFromTopFade,
                                    reverseAnimation:
                                        StyledToastAnimation.slideToTopFade,
                                    position: StyledToastPosition(
                                        align: Alignment.topCenter, offset: 0.0),
                                    startOffset: Offset(0.0, -3.0),
                                    reverseEndOffset: Offset(0.0, -3.0),
                                    duration: Duration(seconds: 4),
                                    //Animation duration   animDuration * 2 <= duration
                                    animDuration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    reverseCurve: Curves.fastOutSlowIn);
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Описание",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Container(
                                      height: 250,
                                      child: SingleChildScrollView(
                                          child: ListView.builder(
                                              physics: NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: item
                                                  .characters[0].characters?.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 12,
                                                          horizontal: 16.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          SizedBox(
                                                            width: 200,
                                                            child: Text(
                                                                item.characters[0].characters?[index].name ??"",
                                                                style: GoogleFonts.poppins(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        fontSize:
                                                                            15),
                                                              overflow: TextOverflow.ellipsis,
                                                            ),
                                                          ),
                                                          Text(
                                                              item.characters[0].characters?[index].value ??"",
                                                              style: GoogleFonts.poppins(
                                                                      fontWeight: FontWeight.w500,
                                                                      fontSize: 15),
                                                            overflow: TextOverflow.ellipsis,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                        color: Colors.black12,
                                                        height: 1)
                                                  ],
                                                );
                                              })),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 14.0),
                              child: Row(
                                children: [
                                  Text("Характеристики",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.black38)
                                ],
                              ),
                            ),
                          ),
                          const Divider(color: Colors.black12, height: 1),
                          const SizedBox(height: 12),
                          InkWell(
                            onTap: () {
                              BlocProvider.of<DetailsBloc>(context)
                                  .add(AddEvent(id));
                              context.read<BottomProvider>().increment();
                              savedProducts.clear();
                              _bloc.add(GetAllSavedEvent());
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFffc300),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'В корзину',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                }
              },
            ),
          )),
    );
  }
}
