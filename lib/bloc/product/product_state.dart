import 'package:apple_shop/model/product_image.dart';
import 'package:apple_shop/model/product_variant.dart';
import 'package:dartz/dartz.dart';

class ProductState {}

class ProductInitState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductResponseState extends ProductState {
  Either<String, List<ProductImage>> productImageList;
  Either<String, List<ProductVariant>> productVariantList;
  ProductResponseState(this.productImageList, this.productVariantList);
}
