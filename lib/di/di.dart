import 'package:apple_shop/data/datasource/auth_datasource.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
Future<void> getItInit() async {
  // Components
  locator.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: 'https://startflutter.ir/api/')));

  // Data Sources
  locator.registerFactory<IAuthDataSource>(() => AuthRemote());
}
