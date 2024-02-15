part of 'catalog_bloc.dart';

@immutable
abstract class CatalogState {}

class CatalogInitial extends CatalogState{}

class GetAllCatalogState extends CatalogState {
  final AllCategoriesModel data;

  GetAllCatalogState(this.data);
}