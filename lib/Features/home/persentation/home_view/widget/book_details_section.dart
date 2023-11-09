import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constance/string_constace.dart';
import '../../../../../core/constance/style_manger.dart';
import '../../../../../core/constance/values_manger.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.2),
          child: const CustomBookImage(),
        ),
        SizedBox(
          height: AppSize.s43.h,
        ),
        Text(
          StringConstance.theJungleBook,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: AppSize.s6.h,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            StringConstance.rudyardKipling,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: AppSize.s18.h,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height:AppSize.s37.h,
        ),
        const BooksAction(),
      ],
    );
  }
}
