// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:apple_shop/model/category.dart';

abstract class CategoryState {}

class CategoryInitState extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategoryResponseState extends CategoryState {
  Either<String, List<Category>> categoriesList;
  CategoryResponseState(
    this.categoriesList,
  );
}
