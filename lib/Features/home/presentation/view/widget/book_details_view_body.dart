
import 'package:bookly/Features/home/presentation/view/widget/book_details_section.dart';
import 'package:bookly/Features/home/presentation/view/widget/similar_books_section.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height:AppSize.s50.h,
                  ),
                ),
                const SimilarBooksSection(),
                SizedBox(
                  height:AppSize.s40.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
