import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../mange/smilar_books_cubit/smilar_books_cubit.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookModel;
  const BookDetailsView({super.key, required this.bookModel});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category:widget.bookModel.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body: SafeArea(child: BookDetailsViewBody(bookModel: widget.bookModel,)),
    );
  }
}
