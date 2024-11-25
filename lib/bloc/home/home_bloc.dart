import 'package:apple_shop/bloc/home/home_event.dart';
import 'package:apple_shop/bloc/home/home_state.dart';
import 'package:apple_shop/data/repository/banner_repository.dart';
import 'package:apple_shop/data/repository/category_repository.dart';
import 'package:apple_shop/data/repository/product_repository.dart';
import 'package:apple_shop/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IBannerRepository _bannerRepository = locator.get();
  final ICategoryRepository _categoryRepository = locator.get();
  final IProductRepository _productRepository = locator.get();
  HomeBloc() : super(HomeInitState()) {
    on<HomeGetInitializeDataEvent>(
      (event, emit) async {
        emit(HomeLoadingState());
        var bannersList = await _bannerRepository.getBanners();
        var categoriesList = await _categoryRepository.getCategories();
        var productsList = await _productRepository.getAllProducts();
        var hotestProductsList = await _productRepository.getHotestProducts();
        var bestSellerProductsList =
            await _productRepository.getBestSellerProducts();
        emit(
          HomeResponseState(
            bannersList,
            categoriesList,
            productsList,
            hotestProductsList,
            bestSellerProductsList,
          ),
        );
      },
    );
  }
}
