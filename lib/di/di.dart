import 'package:apple_shop/data/datasource/auth_datasource.dart';
import 'package:apple_shop/data/datasource/banner_datasource.dart';
import 'package:apple_shop/data/datasource/category_datasource.dart';
import 'package:apple_shop/data/datasource/product_datasource.dart';
import 'package:apple_shop/data/datasource/product_detail_datasource.dart';
import 'package:apple_shop/data/repository/auth_repository.dart';
import 'package:apple_shop/data/repository/banner_repository.dart';
import 'package:apple_shop/data/repository/category_repository.dart';
import 'package:apple_shop/data/repository/product_detail_repository.dart';
import 'package:apple_shop/data/repository/product_repository.dart';
import 'package:apple_shop/model/product.dart';
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
  locator
      .registerFactory<ICategoryDatasource>(() => CategoryRemoteDatasource());
  locator.registerFactory<IProductDatasource>(() => ProductRemoteDatasource());
  locator.registerFactory<IProductDetailDatasource>(
      () => ProductDetailRemoteDatasource());

  // Repositories
  locator.registerFactory<IAuthRepository>(() => AuthRepository());
  locator.registerFactory<IBannerRepository>(() => BannerRepository());
  locator.registerFactory<ICategoryRepository>(() => CategoryRepository());
  locator.registerFactory<IProductRepository>(() => ProductRepository());
  locator.registerFactory<IProductDetailRepository>(
      () => ProductDetailRepository());
}
