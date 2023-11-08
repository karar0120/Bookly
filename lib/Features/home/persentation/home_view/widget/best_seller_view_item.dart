import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/image_constance.dart';
import '../../../../../core/constance/string_constace.dart';
import '../../../../../core/constance/style_manger.dart';
import 'book_rating.dart';

class BookListViewItem  extends StatelessWidget {
  const BookListViewItem ({super.key});

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
          SizedBox(
            width: AppSize.s30.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: const Text(StringConstance.harryPotterAndTheGobletOfFire,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),

                ),
                SizedBox(
                  height: AppSize.s3.h,
                ),
                const Text(
                  StringConstance.jKRowling,
                  style:Styles.textStyle14,
                ),
                SizedBox(
                  height: AppSize.s3.h,
                ),
                Row(
                  children: [
                    Text(StringConstance.price,
                      style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
