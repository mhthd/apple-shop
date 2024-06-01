import 'package:apple_shop/constants/custom_colors.dart';
import 'package:apple_shop/widgets/custom_app_bar.dart';
import 'package:apple_shop/widgets/off_tag.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGrey,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: CustomAppBar(
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                const Text(
                                  'سبد خرید',
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
                  ),
                ),
                SliverList.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return const CardItem();
                  }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  textStyle: const TextStyle(fontFamily: 'sb', fontSize: 16),
                  fixedSize: Size(MediaQuery.of(context).size.width, 53),
                  backgroundColor: CustomColors.green,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'ادامه فرآیند خرید',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 239,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 10),
            color: CustomColors.grey,
            blurRadius: 30,
            spreadRadius: -25,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 18, top: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'آیفون ۱۳ پرومکس',
                          style: TextStyle(
                            fontFamily: 'sb',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.end,
                          softWrap: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'گارانتی 18 ماه مدیا پردازش',
                          style: TextStyle(
                              fontFamily: 'sb',
                              fontSize: 14,
                              color: CustomColors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OffTag(percent: 3),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'تومان',
                              style: TextStyle(
                                  fontFamily: 'sb',
                                  fontSize: 10,
                                  color: CustomColors.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '۴۶٬۰۰۰٬۰۰۰',
                              style: TextStyle(
                                  fontFamily: 'sb',
                                  fontSize: 12,
                                  color: CustomColors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          alignment: WrapAlignment.end,
                          direction: Axis.horizontal,
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            CheapOption(),
                            CheapOption(),
                            CheapOption(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/iphone.png'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DottedLine(
              direction: Axis.horizontal,
              dashColor: CustomColors.lightGrey,
              lineThickness: 2,
              dashLength: 9,
              dashGapLength: 3,
              dashRadius: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تومان',
                  style: TextStyle(fontSize: 12, fontFamily: 'sb'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '۴۵٬۳۵۰٬۰۰۰',
                  style: TextStyle(fontSize: 16, fontFamily: 'sb'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CheapOption extends StatelessWidget {
  const CheapOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(width: 1, color: CustomColors.lightGrey)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/icon_options.png'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '۲۵۶ گیگابایت',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: CustomColors.grey, fontFamily: 'sb', fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
