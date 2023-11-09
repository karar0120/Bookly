import 'package:bookly/Features/home/presentation/view/widget/feature_view_item.dart';
import 'package:bookly/core/constance/string_constace.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'best_seller_view.dart';
import 'custom_app_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppSize.s30),
              child: CustomAppBar(),
            ),
            const FeatureListView(),
            SizedBox(
              height: AppSize.s50.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:AppPadding.p30),
              child: Text(StringConstance.bestSeller,style: Theme.of(context).textTheme.headlineLarge,),
            ),
            SizedBox(
              height: AppSize.s20.h,
            ),
          ],
        ),
      ),
      const SliverToBoxAdapter(
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
           child: BestSellerListView(),
         ),
       )
      ],
    );
  }
}
