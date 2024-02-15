import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:texno/presenter/screens/details/bloc/details_bloc.dart';
import 'package:texno/presenter/screens/details/details.dart';
import 'package:texno/presenter/screens/selected/bloc/selected_bloc.dart';
import 'package:texno/utils/item_holder.dart';

import '../../components/product.dart';

class SelectedScreen extends StatefulWidget {
  final String slug;

  SelectedScreen(this.slug, {super.key});

  @override
  State<SelectedScreen> createState() => _SelectedScreenState(slug);
}

class _SelectedScreenState extends State<SelectedScreen> {
  final String slug;

  _SelectedScreenState(this.slug);

  // final _bloc = SelectedBloc();

  @override
  void initState() {
    BlocProvider.of<SelectedBloc>(context).add(GetSelectedEvent(slug));
    // _bloc.add(GetSelectedEvent(slug));
    super.initState();
  }

  List<ItemHolder> catalogHolder = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectedBloc, SelectedState>(
        listener: (context, state) {
      if (state is GetSelectedState) {
        state.data.data?.products?.forEach((element) {
          catalogHolder.add(ItemHolder(
              element.id.toString(),
              element.name ?? '',
              element.image ?? '',
              element.axiomMonthlyPrice ?? '',
              element.salePrice.toString(),
              "0",
              false,
              true));
        });
      }
    }, builder: (context, state) {
      if (catalogHolder.isNotEmpty) {
        return Scaffold(
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
              title: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/img.png",
                    width: 170,
                    height: 30,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              scrolledUnderElevation: 1.0,
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.4),
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: catalogHolder.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                  create: (context) => DetailsBloc(),
                                  child: ProductDetails(
                                      id: catalogHolder[index]),
                                )),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: productItem(
                          catalogHolder[index].name,
                          catalogHolder[index].image,
                          catalogHolder[index].value,
                          catalogHolder[index].price,
                          false,
                          () {},
                          false,
                          () {}),
                    ),
                  );
                }));
      } else {
        return Scaffold(
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
            title: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/img.png",
                  width: 170,
                  height: 30,
                  fit: BoxFit.cover,
                )
              ],
            ),
            scrolledUnderElevation: 1.0,
          ),
          body: Center(
            child: LoadingAnimationWidget.twistingDots(
              leftDotColor: const Color(0xff000000),
              rightDotColor: const Color(0xffffc300),
              size: 48,
            ),
          ),
        );
      }
    });
  }
}
