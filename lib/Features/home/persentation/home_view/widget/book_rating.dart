import 'package:bookly/core/constance/color_constace.dart';
import 'package:bookly/core/constance/string_constace.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constance/style_manger.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(  FontAwesomeIcons.solidStar,
          size: AppSize.s14,
          color: ColorConstance.yellow,
        ),
        SizedBox(
          width: AppSize.s6_3.w,
        ),
        const Text(
          StringConstance.rate,
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: AppSize.s5.w,
        ),
      ],
    );
  }
}
