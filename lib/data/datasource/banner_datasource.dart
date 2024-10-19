import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:apple_shop/widgets/banner.dart';
import 'package:dio/dio.dart';

abstract class IBannerDatasource {
  Future<List<Banner>> getBanners();
}

class BannerRemoteDatasource extends IBannerDatasource {
  final Dio _dio = locator.get();
  @override
  Future<List<Banner>> getBanners() async {
    try {
      var response = await _dio.get('collections/banner/records');
      return response.data['items']
          .map<Banner>((jsonObject) => Banner.mapFromJson(jsonObject))
          .toList();
    } on DioException catch (e) {
      throw ApiException(e.response?.statusCode, e.response?.statusMessage);
    } catch (e) {
      throw ApiException(0, 'unknown error');
    }
  }
}
