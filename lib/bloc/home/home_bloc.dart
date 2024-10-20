import 'package:apple_shop/bloc/home/home_event.dart';
import 'package:apple_shop/bloc/home/home_state.dart';
import 'package:apple_shop/data/repository/banner_repository.dart';
import 'package:apple_shop/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IBannerRepository _bannerRepository = locator.get();
  HomeBloc() : super(HomeInitState()) {
    on<HomeGetInitializeDataEvent>((event, emit) async {
      emit(HomeLoadingState());
      var bannersList = await _bannerRepository.getBanners();
      emit(HomeResponseState(bannersList));
    });
  }
}
