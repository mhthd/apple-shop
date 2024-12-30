import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/model/product_image.dart';
import 'package:apple_shop/model/product_variant.dart';
import 'package:apple_shop/model/variant.dart';
import 'package:apple_shop/model/variant_type.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dio/dio.dart';

abstract class IProductDetailDatasource {
  Future<List<ProductImage>> getGalleries();
  Future<List<Variant>> getVariants();
  Future<List<VariantType>> getVariantTypes();
  Future<List<ProductVariant>> getProductVariants();
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

  @override
  Future<List<VariantType>> getVariantTypes() async {
    try {
      var response = await _dio.get(
        'collections/variants_type/records',
      );
      return response.data['items']
          .map<VariantType>((jsonObject) => VariantType.mapFromJson(jsonObject))
          .toList();
    } on DioException catch (e) {
      throw ApiException(e.response?.statusCode, e.response?.statusMessage);
    } catch (e) {
      throw ApiException(0, 'unknown error');
    }
  }

  @override
  Future<List<Variant>> getVariants() async {
    try {
      Map<String, String> queryParams = {
        'filter': 'product_id="at0y1gm0t65j62j"'
      };
      var response = await _dio.get('collections/variants/records',
          queryParameters: queryParams);
      return response.data['items']
          .map<Variant>((jsonObject) => Variant.mapFromJson(jsonObject))
          .toList();
    } on DioException catch (e) {
      throw ApiException(e.response?.statusCode, e.response?.statusMessage);
    } catch (e) {
      throw ApiException(0, 'unknown error');
    }
  }

  @override
  Future<List<ProductVariant>> getProductVariants() async {
    List<Variant> variantsList = await getVariants();
    List<VariantType> variantTypeList = await getVariantTypes();

    List<ProductVariant> productVariantList = [];
    for (var varType in variantTypeList) {
      var varList = variantsList.where((variant) {
        return variant.typeId == varType.id;
      }).toList();

      productVariantList.add(ProductVariant(varType, varList));
    }

    return productVariantList;
  }
}
