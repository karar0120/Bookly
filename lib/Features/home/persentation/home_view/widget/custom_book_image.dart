import 'package:bookly/core/constance/image_constance.dart';

import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s125.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s16.r),
                  image:const DecorationImage(
                    fit:BoxFit.fill ,
                  image:AssetImage(
                   ImageConstance.testImage
                  )
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
