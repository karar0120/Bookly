import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view/widget/custom_book_item.dart';
import 'package:bookly/core/constance/route_manager.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constance/string_constace.dart';
import '../../../../../core/constance/style_manger.dart';
import 'book_rating.dart';

class BookListViewItem  extends StatelessWidget {
  final BookModel bookModel;
  const BookListViewItem ({super.key,required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: AppSize.s125.h,
        child: Row(
          children: [
            CustomBookImage(imageLink: bookModel.volumeInfo.imageLinks?.thumbnail??""),
            SizedBox(
              width: AppSize.s30.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),

                  ),
                  SizedBox(
                    height: AppSize.s3.h,
                  ),
                  Text(
                  bookModel.volumeInfo.authors![0],
                    style:Styles.textStyle14,
                  ),
                  SizedBox(
                    height: AppSize.s3.h,
                  ),
                  Row(
                    children: [
                      Text(StringConstance.free,
                        style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Spacer(),
                     BookRating(rating:bookModel.volumeInfo.averageRating?.round()??0,
                      count:bookModel.volumeInfo.ratingsCount??0 ,),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
