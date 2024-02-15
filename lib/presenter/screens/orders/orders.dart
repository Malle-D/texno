import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:texno/presenter/screens/orders/bloc/orders_bloc.dart';
import 'package:texno/utils/item_holder.dart';

import '../../mainpage/langing_provider.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final _bloc = OrdersBloc();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  final check = false;

  final List<List<ItemHolder>> ordersHolder = [];
  String userName = "";

  FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    _bloc.add(GetAllOrdersEvent());
    _bloc.add(GetUserNameEvent());
    super.initState();
  }

  var logger = Logger();

  String getTotal(List<ItemHolder> items) {
    int sum = 0;
    for (var o in items) {
      sum += int.parse(o.count) * int.parse(o.price);
    }
    return sum.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFC300),
        shadowColor: Theme.of(context).colorScheme.shadow,
        title: Column(
          children: [
            Text(
              "Заказы",
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
        child: BlocConsumer<OrdersBloc, OrdersState>(listener: (context, state) {
          if (state is GetAllOrdersState) {
            for (var element in state.orders) {
              ordersHolder.add(element);
            }
              logger.d(ordersHolder.length);
          }
          if (state is GetUserNameState) {
            userName = state.userName;
          }
        }, builder: (context, state) {
          if (ordersHolder.isNotEmpty && userName.isNotEmpty) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: ordersHolder.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Заказ номер Х',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '${ordersHolder[index].length} товаров на сумму ${getTotal(ordersHolder[index])}',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward_ios, size: 16,)
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Итого заказов сделано:",
                            style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                          Text("${ordersHolder.length}",
                            style: GoogleFonts.roboto(
                          color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // BlocProvider.of<DetailsBloc>(context).add(AddEvent(item));
                        // Navigator.pushNamed(context, 'basket');
                        context.read<BottomProvider>().changeIndex(1);
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
                            'Продолжить Шоппинг',
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
          } else if (ordersHolder.isEmpty && userName.isNotEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/box.png",
                      color: Colors.grey, width: 100),
                  const SizedBox(height: 16),
                  Text(
                    'У вас пока нет заказов',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
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
          } else {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 26),
                      child: Text(
                        'Войдите в личный кабинет, чтобы посмотреть свои заказы',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controllerName,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Введите своё имя',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextFormField(
                    controller: controllerPhone,
                    maxLength: 9,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Введите номер телефона',
                      prefix: Text("+998"),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      counterText: "",
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text:
                          'Нажимая кнопку "Войти" вы соглашаетесь с условиями ',
                      style: GoogleFonts.roboto(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'оферты',
                          style: TextStyle(
                            color: Colors.blue,
                            // синий цвет
                            decoration: TextDecoration.underline,
                            // подчеркивание
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      if (controllerName.text.length < 3 &&
                          controllerPhone.text.length != 9) {
                        showToast('Данные введены неверно',
                            context: context,
                            animation: StyledToastAnimation.slideFromTopFade,
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
                        _bloc.add(RegisterUserEvent(
                            controllerName.text, controllerPhone.text));
                        _bloc.add(GetUserNameEvent());
                        showToast('Регистрация прошли успешно!',
                            context: context,
                            animation: StyledToastAnimation.slideFromTopFade,
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFffc300),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Войти',
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
