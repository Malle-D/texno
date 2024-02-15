import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:texno/presenter/components/basket.dart';
import 'package:texno/presenter/mainpage/langing_provider.dart';
import 'package:texno/presenter/screens/basket/bloc/basket_bloc.dart';

import '../../../utils/item_holder.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  final _bloc = BasketBloc();

  @override
  void initState() {
    _bloc.add(GetAllBasketEvent());
    _bloc.add(GetUserEvent());
    super.initState();
  }

  String userName = "";

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  int allPrise = 0;

  List<ItemHolder> basketHolder = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          context.read<BottomProvider>().changeIndex(0);
        });
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFFFC300),
          shadowColor: Theme.of(context).colorScheme.shadow,
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Корзина",
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
              BlocConsumer<BasketBloc, BasketState>(listener: (context, state) {
            if (state is GetAllBasketState) {
              // basketHolder.clear();
              for (var element in state.data) {
                setState(() {
                  allPrise +=
                      int.parse(element.price) * int.parse(element.count);
                });
                basketHolder.add(element);
              }
            }
            if(state is GetUserState) {
              userName = state.userName;
            }
          }, builder: (context, state) {
            if (basketHolder.isNotEmpty) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: basketHolder.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: basketItem(
                                  basketHolder[index].name,
                                  basketHolder[index].image,
                                  basketHolder[index].value,
                                  basketHolder[index].price,
                                  int.parse(basketHolder[index].count),
                                  () {
                                    setState(() {
                                      basketHolder[index].count = (int.parse(
                                                  basketHolder[index].count) +
                                              1)
                                          .toString();
                                      _bloc.add(SaveProductChangesEvent(
                                          basketHolder[index],
                                          basketHolder[index].count,
                                          basketHolder[index].favourite));
                                      allPrise = 0;
                                      for (var o in basketHolder) {
                                        allPrise += int.parse(o.count) *
                                            int.parse(o.price);
                                      }
                                    });
                                  },
                                  () {
                                    setState(() {
                                      if (int.parse(basketHolder[index].count) >
                                          1) {
                                        basketHolder[index].count = (int.parse(
                                                    basketHolder[index].count) -
                                                1)
                                            .toString();
                                        _bloc.add(SaveProductChangesEvent(
                                            basketHolder[index],
                                            basketHolder[index].count,
                                            basketHolder[index].favourite));
                                        allPrise = 0;
                                        for (var o in basketHolder) {
                                          allPrise += int.parse(o.count) *
                                              int.parse(o.price);
                                        }
                                      }
                                    });
                                  },
                                  basketHolder[index].favourite,
                                  () {
                                    setState(() {
                                      basketHolder[index].favourite =
                                          !basketHolder[index].favourite;
                                      _bloc.add(SaveProductChangesEvent(
                                          basketHolder[index],
                                          basketHolder[index].count,
                                          basketHolder[index].favourite));
                                    });
                                  },
                                  () {
                                    setState(() {
                                      _bloc.add(DeleteProductEvent(
                                          basketHolder[index]));
                                      context
                                          .read<BottomProvider>()
                                          .decrement();
                                      basketHolder.clear();
                                      _bloc.add(GetAllBasketEvent());
                                    });
                                  }),
                            );
                          }),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text("Итого:"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${basketHolder.length} товаров"),
                            Text("$allPrise cум")
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          showToast(
                              'Покупка в Рассрочку пока не доступна',
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
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: ShapeDecoration(
                            color: const Color(0xff0e0e0d),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Оформить в рассрочку',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          if (userName.isEmpty) {
                            showToast(
                                'Пожалуйста зарегистрируйтесь для Покупки',
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
                          } else {
                            context.read<BottomProvider>().clearCount();
                            _bloc.add(ApplyOrderEvent(basketHolder));
                            context.read<BottomProvider>().changeIndex(3);
                          }
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
                              'Оформить покупку',
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
                    ],
                  ),
                ),
              );
            } else {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_basket_outlined,
                      size: 72,
                      color: Colors.black38,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'В корзине пока ничего нет',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () {
                        context.read<BottomProvider>().changeIndex(1);
                      },
                      child: Container(
                        width: 300,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFffc300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
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
      ),
    );
  }
}
