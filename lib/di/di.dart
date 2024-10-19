import 'package:apple_shop/data/datasource/auth_datasource.dart';
import 'package:apple_shop/data/datasource/banner_datasource.dart';
import 'package:apple_shop/data/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;
Future<void> getItInit() async {
  // Components
  locator.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: 'https://startflutter.ir/api/')));

  SharedPreferences.setMockInitialValues({});
  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // Data Sources
  locator.registerFactory<IAuthDataSource>(() => AuthRemote());
  locator.registerFactory<IBannerDatasource>(() => BannerRemoteDatasource());

  // Repositories
  locator.registerFactory<IAuthRepository>(() => AuthRepository());
}
