
import 'package:bookly/Features/home/presentation/mange/NewsetBooksCubit/newset_books_cubit.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_view_item.dart';


class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit,NewSetBooksState>(builder: (context,state){
      if (state is NewSetBooksSuccess){
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount:  state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(bookModel: state.books[index],),
            );
          },
        );
      }else if (state is NewSetBooksFailure){
        return CustomErrorWidget(errMessage: state.errMessage);
      }else {
        return const CustomLoadingIndicator();
      }
    });
  }
}