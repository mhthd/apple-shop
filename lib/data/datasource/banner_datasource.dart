import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:apple_shop/widgets/banner.dart';
import 'package:dio/dio.dart';

abstract class IBannerDatasource {
  Future<List<HomeBanner>> getBanners();
}

class BannerRemoteDatasource extends IBannerDatasource {
  final Dio _dio = locator.get();
  @override
  Future<List<HomeBanner>> getBanners() async {
    try {
      var response = await _dio.get('collections/banner/records');
      return response.data['items']
          .map<HomeBanner>((jsonObject) => HomeBanner.mapFromJson(jsonObject))
          .toList();
    } on DioException catch (e) {
      throw ApiException(e.response?.statusCode, e.response?.statusMessage);
    } catch (e) {
      throw ApiException(0, 'unknown error');
    }
  }
}
