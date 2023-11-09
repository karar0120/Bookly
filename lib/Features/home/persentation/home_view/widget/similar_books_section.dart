import 'package:bookly/Features/home/persentation/home_view/widget/similar_books_list_view.dart';
import 'package:bookly/core/constance/string_constace.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/style_manger.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstance.youCanAlsoLike,
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: AppSize.s16.h,
        ),
        const SimilarBooksListview(),
      ],
    );
  }
}