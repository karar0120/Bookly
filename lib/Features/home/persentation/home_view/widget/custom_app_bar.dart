import 'package:bookly/core/constance/image_constance.dart';
import 'package:bookly/core/constance/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            ImageConstance.booklyLogo,
            height: AppSize.s18.h,
          ),
          const Spacer(),
          IconButton(onPressed: () {},
              color:Theme.of(context).primaryColorLight,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,size: AppSize.s22,),
          ),
        ],
      ),
    );
  }
}
