import 'package:apple_shop/widgets/banner.dart';
import 'package:dartz/dartz.dart';

class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeResponseState extends HomeState {
  Either<String, List<HomeBanner>> bannersList;
  HomeResponseState(this.bannersList);
}
