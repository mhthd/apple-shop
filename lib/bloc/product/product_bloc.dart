import 'package:apple_shop/bloc/product/product_event.dart';
import 'package:apple_shop/bloc/product/product_state.dart';
import 'package:apple_shop/data/repository/product_detail_repository.dart';
import 'package:apple_shop/di/di.dart';
import 'package:bloc/bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductDetailRepository _productDetailRepository = locator.get();
  ProductBloc() : super(ProductInitState()) {
    on<ProductDetailInitializeEvent>((event, emit) async {
      emit(ProductLoadingState());
      var response = await _productDetailRepository.getGalleries();
      emit(ProductResponseState(response));
    });
  }
}
