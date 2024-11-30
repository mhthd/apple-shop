import 'package:apple_shop/bloc/category/category_event.dart';
import 'package:apple_shop/bloc/category/category_state.dart';
import 'package:apple_shop/data/repository/category_repository.dart';
import 'package:apple_shop/di/di.dart';
import 'package:bloc/bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepository _categoryRepository = locator.get();
  CategoryBloc() : super(CategoryInitState()) {
    on<CategoryGetInitializeDataEvent>(
      (event, emit) async {
        emit(CategoryLoadingState());
        var categoriesList = await _categoryRepository.getCategories();
        emit(CategoryResponseState(categoriesList));
      },
    );
  }
}
