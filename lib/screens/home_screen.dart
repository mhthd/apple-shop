import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/banner_slider.dart';
import 'package:apple_shop/widgets/category_item.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:apple_shop/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            const SearchBox(),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 32),
                child: BannerSlider(),
              ),
            ),
            const CategoryListTitle(),
            const CategoryList(),
            const BestSellerProductsTitle(),
            const BestSellerProductsList(),
            const MostViewedProductsTitle(),
            const MostViewedProductsList(),
          ],
        ),
      ),
    );
  }
}

class MostViewedProductsList extends StatelessWidget {
  const MostViewedProductsList({
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: 5,
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ProductItem(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MostViewedProductsTitle extends StatelessWidget {
  const MostViewedProductsTitle({
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

class BestSellerProductsList extends StatelessWidget {
  const BestSellerProductsList({
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
            itemCount: 5,
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ProductItem(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class BestSellerProductsTitle extends StatelessWidget {
  const BestSellerProductsTitle({
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

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

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
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return const CategoryItem();
            },
          ),
        ),
      ),
    );
  }
}

class CategoryListTitle extends StatelessWidget {
  const CategoryListTitle({
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
            )
          ],
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
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
