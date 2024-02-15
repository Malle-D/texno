import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:texno/data/source/preference/my_preference.dart';
import 'package:texno/presenter/components/profile_item.dart';
import 'package:texno/presenter/screens/branchs/bloc/branch_bloc.dart';
import 'package:texno/presenter/screens/branchs/branch.dart';
import 'package:texno/presenter/screens/favourite/bloc/favourite_bloc.dart';
import 'package:texno/presenter/screens/favourite/favourite.dart';
import 'package:texno/presenter/screens/profile/bloc/profile_bloc.dart';

import '../../mainpage/langing_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final _bloc = ProfileBloc();
  String userName = "";
  @override
  void initState() {
    _bloc.add(GetProfileUserEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if(state is GetProfileUserState){
              userName = state.name;
            }
          },
          builder: (context, state) {
            if(userName.isNotEmpty){
              return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16),
                          const Icon(Icons.person_outline_outlined, size: 30,),
                          const SizedBox(width: 16),
                          Text(userName, style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          )),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, size: 20),
                          const SizedBox(width: 16),
                        ],
                      ),
                      const SizedBox(height: 16),
                      profileItem(Icons.severe_cold_sharp, "Мои рассрочки"),
                      const SizedBox(height: 8),
                      profileItem(Icons.percent, "Акции"),
                      const SizedBox(height: 8),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider(
                                    create: (context) =>
                                        FavouriteBloc(),
                                    child: const FavoriteScreen())));
                          },
                          child: profileItem(Icons.favorite_border, "Избранное")),
                      const SizedBox(height: 8),
                      profileItem(Icons.compare_arrows, "Сравнение"),
                      const SizedBox(height: 8),

                      profileItem(Icons.location_on_outlined, "Выбор города"),
                      const SizedBox(height: 8),
                      profileItem(Icons.language, "Язык приложения"),
                      const SizedBox(height: 8),

                      profileItem(Icons.credit_card, "Мои карты"),
                      const SizedBox(height: 8),
                      profileItem(Icons.credit_score, "Мои бонусные карты"),
                      const SizedBox(height: 8),
                      InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                        create: (context) =>
                                            BranchBloc(),
                                        child: const BranchScreen())));
                          },
                          child: profileItem(Icons.maps_home_work_outlined, "Наши магазины")),
                      const SizedBox(height: 8),
                      profileItem(Icons.info_outline, "Информация"),
                      const SizedBox(height: 8),
                      profileItem(Icons.chat_outlined, "Служба поддержки"),
                      const SizedBox(height: 8),
                      InkWell(
                          onTap: (){
                            _bloc.add(LogOutEvent());
                            _bloc.add(GetProfileUserEvent());
                          },
                          child: profileItem(Icons.logout, "Выйти")),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            );
            } else {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0x19000000),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Войдите чтобы делать покупки, отслеживать заказы и оплачивать рассрочки',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                InkWell(
                                  onTap: (){
                                    context.read<BottomProvider>().changeIndex(3);
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
                                      padding: const EdgeInsets.symmetric(vertical: 12),
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        profileItem(Icons.percent, "Акции"),
                        const SizedBox(height: 8),
                        InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                          create: (context) =>
                                              FavouriteBloc(),
                                          child: const FavoriteScreen())));
                            },
                            child: profileItem(Icons.favorite_border, "Избранное")),
                        const SizedBox(height: 8),
                        profileItem(Icons.compare_arrows, "Сравнение"),
                        const SizedBox(height: 8),

                        profileItem(Icons.location_on_outlined, "Выбор города"),
                        const SizedBox(height: 8),
                        profileItem(Icons.language, "Язык приложения"),
                        const SizedBox(height: 8),

                        InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BlocProvider(
                                          create: (context) =>
                                              BranchBloc(),
                                          child: const BranchScreen())));
                            },
                            child: profileItem(Icons.maps_home_work_outlined, "Наши магазины")),
                        const SizedBox(height: 8),
                        profileItem(Icons.info_outline, "Информация"),
                        const SizedBox(height: 8),
                        profileItem(Icons.chat_outlined, "Служба поддержки"),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
