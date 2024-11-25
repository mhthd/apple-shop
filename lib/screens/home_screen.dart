import 'package:apple_shop/bloc/home/home_bloc.dart';
import 'package:apple_shop/bloc/home/home_event.dart';
import 'package:apple_shop/bloc/home/home_state.dart';
import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/model/category.dart';
import 'package:apple_shop/model/home_banner.dart';
import 'package:apple_shop/model/product.dart';
import 'package:apple_shop/widgets/banner_slider.dart';
import 'package:apple_shop/widgets/category_item.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:apple_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(HomeGetInitializeDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return CustomScrollView(
            slivers: <Widget>[
              if (state is HomeLoadingState) ...{
                const SliverToBoxAdapter(
                  child: CircularProgressIndicator(),
                )
              } else ...{
                _getSearchBar(),
                if (state is HomeResponseState) ...[
                  state.bannersList.fold(
                    (errorMessage) =>
                        SliverToBoxAdapter(child: Text(errorMessage)),
                    (bannersList) => _getBannerSlider(bannersList),
                  ),
                ],
                _getCategoryListTitle(),
                if (state is HomeResponseState) ...[
                  state.categoriesList.fold(
                    (errorMessage) =>
                        SliverToBoxAdapter(child: Text(errorMessage)),
                    (categoryList) => _getCategoryList(
                      categoryList,
                    ),
                  ),
                ],
                _getBestSellerProductsTitle(),
                if (state is HomeResponseState) ...[
                  state.bestSellerProductsList.fold(
                    (errorMessage) => SliverToBoxAdapter(
                      child: Text(errorMessage),
                    ),
                    (bestSellerProductsList) =>
                        _getBestSellerProductsList(bestSellerProductsList),
                  ),
                ],
                _getMostViewedProductsTitle(),
                if (state is HomeResponseState) ...[
                  state.hotestProductsList.fold(
                    (errorMessage) => SliverToBoxAdapter(
                      child: Text(errorMessage),
                    ),
                    (hotestProductsList) =>
                        _getMostViewedProducts(hotestProductsList),
                  ),
                ],
              }
            ],
          );
        }),
      ),
    );
  }
}

class _getMostViewedProductsTitle extends StatelessWidget {
  const _getMostViewedProductsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, right: 44, left: 44),
        child: Row(
          children: [
            Image.asset('assets/images/icon_left_categroy.png'),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'مشاهده همه',
              style: TextStyle(
                  fontFamily: 'SB', fontSize: 12, color: CustomColors.blue),
            ),
            const Spacer(),
            const Text(
              'پر بازدید ترین ها',
              style: TextStyle(
                fontFamily: 'SB',
                fontSize: 12,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _getBestSellerProductsTitle extends StatelessWidget {
  const _getBestSellerProductsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 32, right: 44, left: 44),
        child: Row(
          children: [
            Image.asset('assets/images/icon_left_categroy.png'),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'مشاهده همه',
              style: TextStyle(
                  fontFamily: 'SB', fontSize: 12, color: CustomColors.blue),
            ),
            const Spacer(),
            const Text(
              'پر فروش ترین ها',
              style: TextStyle(
                fontFamily: 'SB',
                fontSize: 12,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _getCategoryListTitle extends StatelessWidget {
  const _getCategoryListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(top: 32, right: 44, left: 44),
        child: Row(
          children: [
            Spacer(),
            Text(
              'دسته بندی',
              style: TextStyle(
                fontFamily: 'SB',
                fontSize: 12,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _getBannerSlider extends StatelessWidget {
  List<HomeBanner> bannersList;
  _getBannerSlider(
    this.bannersList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: BannerSlider(bannersList),
      ),
    );
  }
}

class _getSearchBar extends StatelessWidget {
  const _getSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Image.asset('assets/images/icon_apple_blue.png'),
              const Spacer(),
              const Text(
                'جستجوی محصولات',
                style: TextStyle(
                    fontSize: 16, fontFamily: 'SB', color: CustomColors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/icon_search.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class _getMostViewedProducts extends StatelessWidget {
  List<Product> hotestProductsList;
  _getMostViewedProducts(
    this.hotestProductsList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SizedBox(
          height: 216,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 24),
            itemCount: hotestProductsList.length,
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ProductItem(
                  hotestProductsList[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _getBestSellerProductsList extends StatelessWidget {
  List<Product> bestSellerProductsList;
  _getBestSellerProductsList(
    this.bestSellerProductsList, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 216,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: bestSellerProductsList.length,
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ProductItem(bestSellerProductsList[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _getCategoryList extends StatelessWidget {
  List<Category> categoryList;
  _getCategoryList(this.categoryList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 82,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            scrollDirection: Axis.horizontal,
            reverse: true,
            itemCount: categoryList.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(
                category: categoryList[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
