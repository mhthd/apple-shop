import 'package:apple_shop/data/datasource/category_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<Category>>> getCategories();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDatasource _categoryDatasource = locator.get();
  @override
  Future<Either<String, List<Category>>> getCategories() async {
    try {
      var response = await _categoryDatasource.getCategories();
      return right(response);
    } on ApiException catch (e) {
      return left(e.message ?? 'error');
    }
  }
}
