import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:texno/data/source/api/api_client.dart';
import 'package:texno/data/source/repository/app_repository.dart';

final getIt = GetIt.instance;
final dio = Dio(BaseOptions(contentType: 'application.json', receiveDataWhenStatusError: true));
void setUp(){
  getIt.registerSingleton<ApiClient>(ApiClient(dio));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}