import 'package:bookly/core/constance/color_constace.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constance/style_manger.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final int count;
  final int rating;
  const BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start,required this.count,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(  FontAwesomeIcons.solidStar,
          size: AppSize.s14,
          color: ColorConstance.yellow,
        ),
        SizedBox(
          width: AppSize.s6_3.w,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: AppSize.s5.w,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
