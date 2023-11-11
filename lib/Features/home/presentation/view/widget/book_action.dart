

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/constance/Fonts_Manger.dart';
import 'package:bookly/core/constance/color_constace.dart';
import 'package:bookly/core/constance/string_constace.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/function/launch_url.dart';
import '../../../../../core/widget/custom_button.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({super.key,required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                text: StringConstance.price,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s16.r),
                  bottomLeft: Radius.circular(AppSize.s16.r),
                ),
              )),
          Expanded(
              child: CustomButton(
                onPressed: () {
                  launchCustomUr(context, bookModel.volumeInfo.previewLink!);
                },
                fontSize: FontSizeManger.s16,
                text: getText(bookModel),
                backgroundColor: ColorConstance.pink,
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppSize.s16.r),
                  bottomRight: Radius.circular(AppSize.s16.r),
                ),
              )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}