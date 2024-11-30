import 'package:apple_shop/bloc/category/category_bloc.dart';
import 'package:apple_shop/bloc/category/category_event.dart';
import 'package:apple_shop/bloc/category/category_state.dart';
import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/widgets/cached_image.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryBloc>(context)
        .add(CategoryGetInitializeDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is CategoryLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else {
              return CustomScrollView(
                slivers: <Widget>[
                  _getCategoryTitle(),
                  if (state is CategoryResponseState) ...{
                    state.categoriesList.fold(
                        (errorMessage) => SliverToBoxAdapter(
                              child: Text(errorMessage),
                            ),
                        (categoriesList) => _getCategoryItems(categoriesList))
                  }
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class _getCategoryTitle extends StatelessWidget {
  const _getCategoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomAppBar(
        child: Row(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const Text(
                    'دسته بندی',
                    style: TextStyle(
                      color: CustomColors.blue,
                      fontFamily: 'SB',
                      fontSize: 16,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    child: Image.asset(
                      'assets/images/icon_apple_blue.png',
                    ),
                  ),
                  const SizedBox(
                    height: double.infinity,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _getCategoryItems extends StatelessWidget {
  List<Category> categoriesList;
  _getCategoryItems(
    this.categoriesList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 32, bottom: 21, left: 44, right: 44),
      sliver: SliverGrid.builder(
        itemCount: categoriesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (buildContext, index) {
          return CachedImage(
            imageUrl: categoriesList[index].thumbnail,
            radius: 15,
          );
        },
      ),
    );
  }
}
