import 'package:bookly/Features/home/presentation/view/widget/custom_book_item.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s200.h,
      child: ListView.builder(
        shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(AppSize.s8),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
