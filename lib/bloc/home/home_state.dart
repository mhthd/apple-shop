import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/model/home_banner.dart';
import 'package:dartz/dartz.dart';

class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeResponseState extends HomeState {
  Either<String, List<HomeBanner>> bannersList;
  Either<String, List<Category>> categoryList;
  HomeResponseState(this.bannersList, this.categoryList);
}
