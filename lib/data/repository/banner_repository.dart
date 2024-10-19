import 'package:apple_shop/data/datasource/banner_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:apple_shop/widgets/banner.dart';
import 'package:dartz/dartz.dart';

abstract class IBannerRepository {
  Future<Either<String, List<Banner>>> getBanners();
}

class BannerRepository extends IBannerRepository {
  final IBannerDatasource _bannerDatasource = locator.get();
  @override
  Future<Either<String, List<Banner>>> getBanners() async {
    try {
      var response = await _bannerDatasource.getBanners();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }
}
