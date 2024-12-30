import 'package:apple_shop/data/datasource/product_detail_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/model/product_image.dart';
import 'package:apple_shop/model/product_variant.dart';
import 'package:apple_shop/model/variant.dart';
import 'package:apple_shop/model/variant_type.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IProductDetailRepository {
  Future<Either<String, List<ProductImage>>> getGalleries();
  Future<Either<String, List<Variant>>> getVariants();
  Future<Either<String, List<VariantType>>> getVariantTypes();
  Future<Either<String, List<ProductVariant>>> getProductVariants();
}

class ProductDetailRepository extends IProductDetailRepository {
  final IProductDetailDatasource _productDetailDatasource = locator.get();
  @override
  Future<Either<String, List<ProductImage>>> getGalleries() async {
    try {
      var response = await _productDetailDatasource.getGalleries();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }

  @override
  Future<Either<String, List<VariantType>>> getVariantTypes() async {
    try {
      var response = await _productDetailDatasource.getVariantTypes();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }

  @override
  Future<Either<String, List<Variant>>> getVariants() async {
    try {
      var response = await _productDetailDatasource.getVariants();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }

  @override
  Future<Either<String, List<ProductVariant>>> getProductVariants() async {
    try {
      var response = await _productDetailDatasource.getProductVariants();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }
}
