import 'package:apple_shop/data/datasource/product_detail_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/model/product_image.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IProductDetailRepository {
  Future<Either<String, List<ProductImage>>> getGalleries();
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
}
