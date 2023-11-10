import 'package:bookly/Features/home/presentation/mange/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_book_item.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: AppSize.s200.h,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.all(AppSize.s8),
                  child: CustomBookImage(imageLink:state.books[index].volumeInfo.imageLinks?.thumbnail??""),
                );
              }),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
