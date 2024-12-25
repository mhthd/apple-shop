import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/model/product_image.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dio/dio.dart';

abstract class IProductDetailDatasource {
  Future<List<ProductImage>> getGalleries();
}

class ProductDetailRemoteDatasource extends IProductDetailDatasource {
  final Dio _dio = locator.get();
  @override
  Future<List<ProductImage>> getGalleries() async {
    try {
      Map<String, String> queryParams = {
        'filter': 'product_id="78n4wqor3hhnkju"'
      };
      var response = await _dio.get('collections/gallery/records',
          queryParameters: queryParams);
      return response.data['items']
          .map<ProductImage>(
              (jsonObject) => ProductImage.mapFromJson(jsonObject))
          .toList();
    } on DioException catch (e) {
      throw ApiException(e.response?.statusCode, e.response?.statusMessage);
    } catch (e) {
      throw ApiException(0, 'unknown error');
    }
  }
}
