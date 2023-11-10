import 'package:bookly/core/constance/values_manger.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  final String imageLink;

  const CustomBookImage({super.key, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s16.r),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child:CachedNetworkImage(
          fit: BoxFit.fill,
          errorWidget: (context,url, error)=>const Icon(Icons.error,color: Colors.white,),
          imageUrl: imageLink,
        )
      ),
    );
  }
}
