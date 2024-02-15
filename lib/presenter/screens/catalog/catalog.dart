import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:texno/presenter/screens/catalog/bloc/catalog_bloc.dart';
import 'package:texno/presenter/screens/child_cat/catalog_child_page.dart';
import 'package:texno/presenter/screens/selected/bloc/selected_bloc.dart';
import 'package:texno/presenter/screens/selected/selected.dart';

import '../../../data/model/categories/all_categories_model.dart';
import '../../../utils/catalog_holder.dart';
import '../../components/catalog.dart';
import '../../components/search.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {

  final _bloc = CatalogBloc();

  @override
  void initState() {
    _bloc.add(GetAllCatalogEvent());
    super.initState();
  }

  List<CatalogHolder> catalogHolder = [];
  final _controller = TextEditingController();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 68,
        backgroundColor: const Color(0xFFFFFFFF),
        shadowColor: Theme.of(context).colorScheme.shadow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 16),
            InputSearch(context, _controller)
          ],
        ),
        scrolledUnderElevation: 1.0,
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<CatalogBloc, CatalogState>(listener: (context, state) {
          if (state is GetAllCatalogState) {
            state.data.data.categories?.forEach((element) {
              catalogHolder.add(CatalogHolder(element.name ?? '',
                  element.slug ?? '', element.smallImage ?? '',
                element.childs ?? []
              ));
            });
          }
        }, builder: (context, state) {
          if (catalogHolder.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                  itemCount: catalogHolder.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) => SelectedBloc(),
                                  child: CatalogChildPage(data : catalogHolder[index].child, name : catalogHolder[index].name),
                                  // child: SelectedScreen(catalogHolder[index].slug),
                                )),
                          );
                        },
                        child: categoryItem(catalogHolder[index].name,
                            catalogHolder[index].image));
                  }),
            );
          }else {
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
