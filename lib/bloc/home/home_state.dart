import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/model/home_banner.dart';
import 'package:apple_shop/model/product.dart';
import 'package:dartz/dartz.dart';

class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeResponseState extends HomeState {
  Either<String, List<HomeBanner>> bannersList;
  Either<String, List<Category>> categoriesList;
  Either<String, List<Product>> productsList;
  Either<String, List<Product>> hotestProductsList;
  Either<String, List<Product>> bestSellerProductsList;

  HomeResponseState(
    this.bannersList,
    this.categoriesList,
    this.productsList,
    this.hotestProductsList,
    this.bestSellerProductsList,
  );
}
